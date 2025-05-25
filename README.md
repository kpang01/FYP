## About the RTSER (Real-Time Speech Emotion Recognition) Application

The RTSER project is a Flutter-based mobile application designed for real-time speech emotion recognition. It allows users to record their voice or upload an audio file, which is then processed to identify the emotional content of the speech.

### Core Functionality:

1.  **Audio Input**:
    *   Users can record audio directly within the app, with a visual display of audio waveforms during recording. The initial recording is typically captured in a common mobile audio format (e.g., AAC within an MP4 container).
    *   Alternatively, users may have the option to select an existing audio file.

2.  **Audio Processing (Technical Details)**:
    *   The captured audio is programmatically converted to a standardized WAV format using `flutter_ffmpeg`.
    *   The FFmpeg command executed for conversion is:
        `"-i $inputPath -af 'highpass=f=300, lowpass=f=3000, dynaudnorm, acompressor' -ar 44100 -ac 2 -b:a 256k $outputPath"`
    *   **Audio Filters (`-af`) Explained**:
        *   `highpass=f=300`: A high-pass filter removes frequencies below 300 Hz, targeting low-frequency noise like hum or rumble.
        *   `lowpass=f=3000`: A low-pass filter removes frequencies above 3000 Hz, focusing on the primary speech frequency range and reducing high-frequency noise.
        *   `dynaudnorm`: Dynamic audio normalization adjusts the audio to a consistent volume level, crucial for reliable ML model analysis.
        *   `acompressor`: An audio compressor reduces the dynamic range, making speech more uniformly audible.
    *   **Output Format**:
        *   `-ar 44100`: Audio sampling rate is set to 44,100 Hz (CD quality).
        *   `-ac 2`: Audio is set to 2 channels (stereo).
        *   `-b:a 256k`: Audio bitrate is set to 256 kbps, ensuring good quality.
    *   The processed WAV file is then prepared for cloud upload.

3.  **Cloud Integration & API Interaction (Technical Details)**:
    *   The processed WAV file is uploaded to Firebase Storage under a user-specific directory, with the `contentType` set to `audio/wav`.
    *   **API Endpoint**: The application sends a `POST` request to the external prediction API: `https://pangkhongjun723-335f972d-1f6b-437e-8538-933acb3314fb.socketxp.com/predict`.
    *   **Request Payload**: The request body is form-data, containing `{'firebase_url': downloadURL}`, where `downloadURL` is the public URL of the WAV file in Firebase Storage.
    *   **Expected API Response (JSON)**:
        *   `"final_emotion"`: (String) The primary emotion detected (e.g., "happy", "sad").
        *   `"percentage"`: (Double) The confidence score for the `final_emotion`.
        *   `"predicted_emotions"`: (List<String>) A list of all emotions considered or detected.
    *   **Error Handling**: The app checks for an HTTP `200 OK` status. Failures or malformed responses lead to appropriate error handling, typically navigating the user away from the processing screen.

4.  **Displaying Results**:
    *   The API's emotion analysis (primary emotion, confidence, and other predictions) is presented to the user within the app.

### Key Technologies & Features:

*   **Framework**: Flutter
*   **Backend & Storage**: Firebase (Authentication for user accounts, Cloud Storage for audio files)
*   **Audio Processing**: FFmpeg (via `flutter_ffmpeg`)
*   **Emotion Recognition**: Relies on the external API for ML model inference.
*   **User Features**: The app includes sections for Home, SER (the core recording/analysis tool), History of past analyses, and User Profile management.

This application aims to provide an accessible way to analyze emotions in speech, leveraging cloud-based machine learning capabilities and robust audio preprocessing.

### Backend Model Training Approach (Conceptual Overview)

The machine learning model used by the external prediction API is conceptually trained following a process common in Speech Emotion Recognition (SER). This overview is inspired by typical SER model development workflows, such as the one detailed in the [Speech Emotion Recognition notebook by Shivam Burnwal on Kaggle](https://www.kaggle.com/code/shivamburnwal/speech-emotion-recognition).

**1. Understanding Speech Emotion Recognition (SER):**
SER involves identifying human emotions from speech signals by analyzing vocal characteristics like tone, pitch, and rhythm. This automated understanding of emotions has significant applications in areas like customer service, safety systems (e.g., in-car driver monitoring), human-computer interaction, and mental health monitoring. This project leverages deep learning techniques for potentially higher accuracy and robustness in emotion detection.

**2. Datasets for Training:**
A robust SER model typically requires diverse emotional speech data. Commonly integrated datasets include:
*   **RAVDESS** (Ryerson Audio-Visual Database of Emotional Speech and Song)
*   **CREMA-D** (Crowd-sourced Emotional Multimodal Actors Dataset)
*   **TESS** (Toronto Emotional Speech Set)
*   **SAVEE** (Surrey Audio-Visual Expressed Emotion)
These datasets contain audio files labeled with various emotions (e.g., neutral, happy, sad, angry, fear, disgust, surprise, calm).

**3. Data Preparation and Preprocessing:**
*   Audio files from the chosen datasets are aggregated.
*   Emotion labels are standardized across datasets for consistency.
*   File paths and corresponding emotion labels are organized, often into a structured format like a DataFrame.

**4. Data Visualization and Analysis:**
*   The distribution of emotions within the combined dataset is visualized (e.g., using count plots) to check for balance and understand class representation.
*   Waveplots and spectrograms of sample audio files are generated to visually analyze their time-domain and frequency-domain characteristics.

**5. Data Augmentation:**
To increase the diversity of the training data and help the model generalize better (reducing overfitting), several augmentation techniques are often applied to the audio files:
*   **Noise Injection**: Adding random noise.
*   **Time Stretching**: Changing the audio's speed without altering its pitch.
*   **Pitch Shifting**: Modifying the audio's pitch without changing its speed.
*   **Time Shifting**: Shifting the audio along the time axis.
Augmented samples retain their original emotion labels.

**6. Feature Extraction:**
Extracting meaningful features from the raw audio is a critical step. Common features for SER include:
*   **Zero Crossing Rate (ZCR)**: The rate at which the audio signal changes its sign.
*   **Chroma Features (e.g., `chroma_stft`)**: Represent the energy distribution across 12 pitch classes, useful for capturing harmonic content.
*   **Mel Frequency Cepstral Coefficients (MFCC)**: A compact representation of the short-term power spectrum of a sound, widely used in speech processing.
*   **Root Mean Square (RMS) Energy**: Measures the loudness or intensity of the audio.
*   **Mel Spectrogram**: A spectrogram where frequencies are converted to the mel scale, which is more aligned with human auditory perception.
These features are extracted from both original and augmented audio data to form the input for the deep learning model.

**7. Libraries and Tools:**
The development and training of such a model typically involve a suite of Python libraries:
*   **Librosa**: For audio processing, feature extraction, and analysis.
*   **Keras / TensorFlow / PyTorch**: For building, training, and evaluating deep learning models.
*   **Pandas & NumPy**: For data manipulation, handling DataFrames, and numerical operations.
*   **Matplotlib & Seaborn**: For data visualization.
*   **Scikit-learn (sklearn)**: For data preprocessing tasks (like splitting data) and model evaluation metrics.
