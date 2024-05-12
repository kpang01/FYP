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
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Color(0xff06030b),
        body: Padding(
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
                                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem,
                                      121.12 * fem, 0.68 * fem),
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
                              0 * fem, 45 * fem, 2 * fem, 20 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 198 * fem,
                          ),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Emotion \nRecognized!',
                              style: TextStyle(
                                fontSize: 30 * ffem,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // surprisebxH (1:1620)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 20 * fem),
                          width: 200 * fem,
                          height: 200 * fem,
                          child: Center(
                            child: Text(
                              getEmojiForEmotion(widget
                                  .finalEmotion!), // Surprise emoji character
                              style: TextStyle(
                                fontSize:
                                    130 * fem, // Adjust the font size as needed
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group798hK (1:1621)
                          margin: EdgeInsets.fromLTRB(
                              101 * fem, 0 * fem, 101 * fem, 76 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // surprisefSM (1:1622)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: widget.finalEmotion.toString(),
                                    style: TextStyle(
                                      fontSize: 25 * ffem,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xff30e8ff),
                                    ),
                                  ),
                                ),
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: widget.percentage.toStringAsFixed(2) +
                                      "%",
                                  style: TextStyle(
                                    fontSize: 22 * ffem,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff30e8ff),
                                  ),
                                ),
                              ),
                            ],
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
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => mainPage()),
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
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Text(
                                    'AudioPlayer',
                                    style: TextStyle(
                                      fontSize: 14 * fem,
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
                ])),
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
          'emotion': widget.finalEmotion,
          'percentage': widget.percentage.toStringAsFixed(2),
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
              Navigator.of(context).pop();
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
