import 'dart:async';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:path_provider/path_provider.dart';

import 'history.dart';
import 'login-page.dart';
import 'main-page.dart';
import 'profile.dart';
import 'ser-process.dart';

class Record extends StatefulWidget {
  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  late final RecorderController recorderController;

  late Duration recordingDuration;

  late Timer _timer;

  String? path;

  String? musicFile;

  bool isRecording = false;

  bool isRecordingCompleted = false;

  bool isLoading = true;

  late Directory appDirectory;

  int _currentIndex = 1;

  String? currentEmotion = 'N/A';

  int uploadCounter = 0;

  double currentPercentage = 0.0;

  @override
  void initState() {
    super.initState();

    _getDir();
    _initialiseControllers();
  }

  void _getDir() async {
    appDirectory = await getApplicationDocumentsDirectory();

    path = "${appDirectory.path}/recording.wav";

    isLoading = false;

    setState(() {});
  }

  void _initialiseControllers() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 44100
      ..bitRate = 256000;

    recordingDuration = Duration(seconds: 0);
  }

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      musicFile = result.files.single.path;

      setState(() {});
    } else {
      debugPrint("File not picked");
    }
  }

  @override
  void dispose() {
    recorderController.dispose();

    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;

    double fem = MediaQuery.of(context).size.width / baseWidth;

    double ffem = fem * 0.97;

    return Scaffold(
        backgroundColor: Color(0xff06030b),
        body: Padding(
          padding: EdgeInsets.fromLTRB(17 * fem, 41 * fem, 14 * fem, 35 * fem),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pop(); // This will navigate back
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 121.12 * fem, 0.68 * fem),
                              width: 21.88 * fem,
                              height: 21.32 * fem,
                              child: Icon(
                                Icons.arrow_back,
                                size: 30 * fem,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 95 * fem, 1 * fem),
                            child: RichText(
                              text: TextSpan(
                                text: 'SER',
                                style: TextStyle(
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: PopupMenuButton<int>(
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 1,
                                  child: ListTile(
                                    leading: Icon(Icons.person),
                                    title: Text('Profile'),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 2,
                                  child: ListTile(
                                    leading: Icon(Icons.logout),
                                    title: Text('Logout'),
                                  ),
                                ),
                              ],
                              onSelected: (value) {
                                // Handle menu item selection
                                switch (value) {
                                  case 1:
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage()));
                                    break;
                                  case 2:
                                    FirebaseAuth.instance.signOut();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => loginPage()));
                                    break;
                                }
                              },
                              child: Icon(
                                Icons.account_circle,
                                size: 40 * fem,
                                color: Colors
                                    .white, // Customize the color if needed
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    GestureDetector(
                      onTap: () async {
                        _startOrStopRecording();
                      },
                      child: AvatarGlow(
                        startDelay: const Duration(milliseconds: 1000),
                        repeat: isRecording,
                        glowColor: Colors.white,
                        glowShape: BoxShape.circle,
                        curve: Curves.fastOutSlowIn,
                        child: const Material(
                          elevation: 8.0,
                          shape: CircleBorder(),
                          color: Colors.transparent,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/page-1/images/mic.png'),
                            radius: 80.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '${recordingDuration.inHours.toString().padLeft(2, '0')}:',
                          ),
                          TextSpan(
                            text:
                                '${(recordingDuration.inMinutes % 60).toString().padLeft(2, '0')}:',
                          ),
                          TextSpan(
                            text:
                                '${(recordingDuration.inSeconds % 60).toString().padLeft(2, '0')}',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AudioWaveforms(
                            enableGesture: true,
                            size: Size(
                                MediaQuery.of(context).size.width - 100, 100),
                            recorderController: recorderController,
                            waveStyle: const WaveStyle(
                              waveColor: Colors.blue,
                              extendWaveform: true,
                              showMiddleLine: false,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: const Color(0xff06030b),
                            ),
                            padding: const EdgeInsets.only(left: 18),
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 0.1), // Add top border
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,

            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });

              switch (index) {
                case 0:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mainPage()));

                  break;

                case 1:
                  break;

                case 2:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryPage()));

                  break;

                case 3:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));

                  break;
              }
            },

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mic),
                label: 'SER',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],

            type: BottomNavigationBarType.fixed,

            selectedItemColor: Colors.blue,

            unselectedItemColor: Colors.grey,

            selectedLabelStyle: TextStyle(color: Colors.blue),

            unselectedLabelStyle: TextStyle(color: Colors.grey),

            backgroundColor: Colors.white,

            elevation: 5, // Set the elevation to control the shadow

            showSelectedLabels: true, // Show labels for selected items

            showUnselectedLabels: true, // Show labels for unselected items

            selectedFontSize: 14, // Set the font size for selected labels

            unselectedFontSize: 14, // Set the font size for unselected labels
          ),
        ));
  }

  void _startOrStopRecording() async {
    try {
      if (isRecording) {
        recorderController.reset();

        final path = await recorderController.stop();

        if (path != null) {
          isRecordingCompleted = true;

          debugPrint(path);

          debugPrint("Recorded file size: ${File(path).lengthSync()}");

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProcessPage()),
          );

          // Upload recorded audio file to Firebase Storage

          await _uploadAudioToFirebase(path);

          // Reset and stop the timer

          _stopAndResetTimer();
        }
      } else {
        recordingDuration =
            Duration(seconds: 0); // Reset duration when recording starts

        _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) async {
          setState(() {
            recordingDuration = recordingDuration + Duration(seconds: 1);
          });
        });

        // Start the periodic timer to update the duration

        await recorderController.record(path: path!);
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setState(() {
        isRecording = !isRecording;
      });
    }
  }

  // Function to stop and reset the timer

  void _stopAndResetTimer() {
    if (_timer != null && _timer.isActive) {
      _timer.cancel();
    }

    recordingDuration = Duration(seconds: 0);
  }

  Future<String> convertToWav(String inputPath) async {
    final flutterFFmpeg = FlutterFFmpeg();

    // Provide the output path for the WAV file
    final outputPath = "${appDirectory.path}/converted.wav";

    // Execute the FFmpeg command to convert the file
    await flutterFFmpeg.execute(
        "-i $inputPath -af 'highpass=f=300, lowpass=f=3000, dynaudnorm, acompressor' -ar 44100 -ac 2 -b:a 256k $outputPath");
    // Return the path of the converted WAV file
    return outputPath;
  }

  Future<void> _uploadAudioToFirebase(String filePath) async {
    try {
      // Convert the file to WAV format
      final wavFilePath = await convertToWav(filePath);
      File audioFile = File(wavFilePath);

      final currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser == null) {
        print("User not logged in.");
        return;
      }

      String userId = currentUser.uid;
      String fileName = "user_folders/$userId/temp/temp.wav";

      firebase_storage.Reference storageReference =
          firebase_storage.FirebaseStorage.instance.ref().child(fileName);

      // Set the content type to audio/wav
      firebase_storage.SettableMetadata metadata =
          firebase_storage.SettableMetadata(
        contentType: 'audio/wav',
      );

      // Upload audio file to Firebase Storage with content type set
      await storageReference.putFile(
        audioFile,
        metadata,
      );

      // Get the download URL after upload is complete
      String downloadURL = await storageReference.getDownloadURL();
      audioFile.delete(); // Delete the WAV file from app directory

      // Now, you can save downloadURL to Firebase Database or perform any other actions.
      print("Audio file uploaded. Download URL: $downloadURL");

      // Delete all audio files from app directory
    } catch (e) {
      print("Error uploading audio file: $e");

      if (e is firebase_storage.FirebaseException) {
        print("Firebase Storage Error Code: ${e.code}");
        print("Firebase Storage Error Message: ${e.message}");
        print("Firebase Storage Inner Exception: ${e.stackTrace}");
      }
    }
  }

  String getEmojiForEmotion(String emotion) {
    switch (emotion.toLowerCase()) {
      case 'sad':
        return '😢';

      case 'angry':
        return '😡';

      case 'calm':
        return '😌';

      case 'happy':
        return '😊';

      case 'disgust':
        return '🤢';

      case 'fear':
        return '😨';

      case 'neutral':
        return '😐';

      case 'surprise':
        return '😮';

      default:
        return '';
    }
  }
}
