import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:rtser/page-1/playaudio.dart';

import 'history.dart';
import 'login-page.dart';
import 'main-page.dart';
import 'profile.dart';

class ResultPage extends StatefulWidget {
  final String? finalEmotion;
  final double percentage;
  final List<String>? predictedEmotions;

  const ResultPage(
      {Key? key,
      required this.finalEmotion,
      required this.percentage,
      required this.predictedEmotions})
      : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int _currentIndex = 1;
  String fileName = "";
  int duration = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    EmotionCategory emotionCategory = EmotionCategory();
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    // Categorize emotions
    EmotionResult emotionResult =
        emotionCategory.categorizeEmotion(widget.predictedEmotions!);
    return Scaffold(
        backgroundColor: Color(0xff06030b),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    EdgeInsets.fromLTRB(17 * fem, 41 * fem, 14 * fem, 35 * fem),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroup5kkdf4Z (NshhNjP6YiCrzWkPGk5kKd)

                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup3yw9n9B (NshgzfBYM7Axm7FRdZ3yw9)
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
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 121.12 * fem, 0.68 * fem),
                                      width: 21.88 * fem,
                                      height: 21.32 * fem,
                                      child: Icon(
                                        Icons.arrow_back,
                                        size: 21.88 * fem,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 70 * fem, 1 * fem),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Result',
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
                                                    builder: (context) =>
                                                        loginPage()));
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
                            Container(
                              // emotionrecognizedhru (1:1618)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 20 * fem, 2 * fem, 0 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 198 * fem,
                              ),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'Emotion \nRecognized!',
                                  style: TextStyle(
                                    fontSize: 25 * ffem,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // surprisebxH (1:1620)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 200 * fem,
                              height: 180 * fem,
                              child: Center(
                                child: Text(
                                  emotionResult
                                      .emotionEmoji, // Surprise emoji character
                                  style: TextStyle(
                                    fontSize: 120 *
                                        fem, // Adjust the font size as needed
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // group798hK (1:1621)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // surprisefSM (1:1622)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: emotionResult.emotion,
                                        style: TextStyle(
                                          fontSize: 22 * ffem,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xff30e8ff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: emotionResult.message,
                                      style: TextStyle(
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff30e8ff),
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'Your score: ${emotionResult.mark}',
                                      style: TextStyle(
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff30e8ff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 0 * fem), // Add margin for spacing
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      15 * fem), // Add padding for spacing

                              child: SizedBox(
                                height: 150 *
                                    fem, // Set the height of the container
                                child: SingleChildScrollView(
                                  child: ListView.builder(
                                    shrinkWrap:
                                        true, // Add this to ensure ListView scrolls properly
                                    physics:
                                        NeverScrollableScrollPhysics(), // Disable scrolling of ListView
                                    itemCount: widget.predictedEmotions!
                                        .length, // Use widget.predictedEmotions
                                    itemBuilder: (context, index) {
                                      var item = widget.predictedEmotions![
                                          index]; // Use widget.predictedEmotions
                                      int durationInSeconds = index *
                                          7; // Calculate duration based on index
                                      String formattedDuration = formatDuration(
                                          durationInSeconds); // Format duration

                                      return Container(
                                        margin:
                                            EdgeInsets.only(bottom: 5 * fem),
                                        padding: EdgeInsets.fromLTRB(
                                          15 * fem,
                                          0 * fem,
                                          7 * fem,
                                          0 * fem,
                                        ),
                                        height: 40 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(5 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(2 * fem, 2 * fem),
                                              blurRadius: 1 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 15 * fem),
                                              width: 42 * fem,
                                              height: 42 * fem,
                                              child: Text(
                                                getEmojiForEmotion(widget
                                                    .predictedEmotions![index]),
                                                style: TextStyle(fontSize: 32),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10 * fem),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  RichText(
                                                    text: TextSpan(
                                                      text: "Emotion: " +
                                                          widget
                                                              .predictedEmotions![
                                                                  index]
                                                              .toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize: 15 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xb2000000),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    top: 10 * fem,
                                                    left: 10 * fem),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      RichText(
                                                        text: TextSpan(
                                                          text:
                                                              formattedDuration,
                                                          style: TextStyle(
                                                            fontSize: 15 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Color(
                                                                0xb2000000),
                                                          ),
                                                        ),
                                                      )
                                                    ]))
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // group627p9 (1:1624)
                              margin: EdgeInsets.fromLTRB(
                                  10 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
                              height: 50 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        15 * fem, 0 * fem, 40 * fem, 0 * fem),
                                    width: 120 * fem,
                                    height: 50 * fem,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Add your process button functionality here
                                        showDialog(
                                          context: context,
                                          builder: (context) => SaveFileDialog(
                                            onSave: saveAudioFile,
                                            fileName: fileName,
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors
                                            .blue, // Adjust the color as needed
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    mainPage()),
                                          );
                                        },
                                        child: Text(
                                          'Save',
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: 120 * fem,
                                    height: 50 * fem,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Add your process button functionality here
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PlayAudio(
                                              finalEmotion: widget.finalEmotion,
                                              percentage: widget.percentage,
                                              predictedEmotions:
                                                  widget.predictedEmotions,
                                            ),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors
                                            .blue, // Adjust the color as needed
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      child: Text(
                                        'AudioPlayer',
                                        style: TextStyle(
                                          fontSize: 12 * fem,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))),
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

  String formatDuration(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    String hoursString = (hours < 10) ? '0$hours' : '$hours';
    String minutesString = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsString =
        (remainingSeconds < 10) ? '0$remainingSeconds' : '$remainingSeconds';

    return '$hoursString:$minutesString:$secondsString';
  }

  Future<void> saveAudioFile(String fileName) async {
    try {
      // Get the current user
      User? user = FirebaseAuth.instance.currentUser;

      // Check if user is authenticated
      if (user != null) {
        // Get references to the audio files in Firebase Storage
        final oldRef = firebase_storage.FirebaseStorage.instance
            .ref('user_folders/${user.uid}/temp/temp.wav');
        final newRef = firebase_storage.FirebaseStorage.instance
            .ref('user_folders/${user.uid}/audio/$fileName.wav');

        // Get the data of the audio file
        final fileData = await oldRef.getData();

        // Store the data in the new location
        await newRef.putData(fileData!,
            firebase_storage.SettableMetadata(contentType: 'audio/wav'));

        final downloadURL = await newRef.getDownloadURL();

        // Use flutter_ffmpeg to get the duration
        final FlutterFFprobe flutterFFprobe = FlutterFFprobe();
        final mediaInfo = await flutterFFprobe.getMediaInformation(downloadURL);
        final duration = mediaInfo.getMediaProperties()!['duration'];
        EmotionCategory emotionCategory = EmotionCategory();
        EmotionResult emotionResult =
            emotionCategory.categorizeEmotion(widget.predictedEmotions!);
        // Save additional data to the Realtime Database
        final databaseReference = FirebaseDatabase.instance.reference();
        databaseReference
            .child('audio_files')
            .child(user.uid)
            .child(fileName)
            .set({
          'userId': user.uid,
          'downloadURL': downloadURL,
          'fileName': fileName,
          'date': DateTime.now().toString(),
          'emotion': emotionResult.emotion,
          'mark': emotionResult.mark.toString(),
          'list_emotion': widget.predictedEmotions,
          'duration': duration.toString(), // Use the retrieved duration
          // Add more data as needed
        });

        // Delete the audio file from the old location
        await oldRef.delete();

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Audio file saved successfully.'),
        ));
        Navigator.of(context).pop();
      } else {
        // Show error message if user is not authenticated
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('User not authenticated.'),
        ));
      }
    } catch (error) {
      // Show error message if any error occurs during the process
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error saving audio file: $error'),
      ));
    }
  }
}

class SaveFileDialog extends StatelessWidget {
  final Function(String) onSave;
  final String fileName;
  SaveFileDialog({required this.onSave, required this.fileName});

  @override
  Widget build(BuildContext context) {
    String fileName = '';

    return AlertDialog(
      title: Text('Save Audio File'),
      content: TextField(
        onChanged: (value) => fileName = value,
        decoration: InputDecoration(labelText: 'Enter file name'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Check if file name is not empty
            if (fileName.isNotEmpty) {
              onSave(fileName);
            } else {
              // Show error message if file name is empty
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Please enter a file name'),
              ));
            }
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}

class EmotionCategory {
  // Function to categorize emotions
  EmotionResult categorizeEmotion(List<String> predictedEmotions) {
    // Define scores for each emotion
    Map<String, int> emotionScores = {
      'angry': -3,
      'disgust': -2,
      'fear': -2,
      'sad': -2,
      'neutral': 1,
      'happy': 1,
      'calm': 1,
      'surprise': 1,
    };

    // Initialize total score
    int totalScore = 0;

    // Calculate total score based on predicted emotions
    for (String emotion in predictedEmotions) {
      // Check if the emotion is in the emotionScores map
      if (emotionScores.containsKey(emotion.toLowerCase())) {
        // Add the score of the emotion to the total score
        totalScore += emotionScores[emotion.toLowerCase()]!;
      }
    }
    int mark = totalScore;
    // Determine the category based on the total score
    if (mark < 0) {
      return EmotionResult(
          emotion: 'NEGATIVE',
          message: 'You seem to be having negative feelings.',
          mark: mark,
          emotionEmoji: '😞');
    } else {
      return EmotionResult(
          emotion: 'POSITIVE',
          message: 'You\'re feeling positively about something!',
          mark: mark,
          emotionEmoji: '😊');
    }
  }
}

class EmotionResult {
  final String message;
  final int mark;
  final String emotion;
  final String emotionEmoji;

  EmotionResult(
      {required this.message,
      required this.mark,
      required this.emotion,
      required this.emotionEmoji});
}
