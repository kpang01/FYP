import 'dart:async';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:rtser/page-1/main-page.dart';

import 'history.dart';
import 'login-page.dart';
import 'profile.dart';

class PlayAudio extends StatefulWidget {
  final String? finalEmotion;
  final double percentage;
  final List<String>? predictedEmotions;

  const PlayAudio(
      {Key? key,
      required this.finalEmotion,
      required this.percentage,
      required this.predictedEmotions})
      : super(key: key);
  @override
  State<PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<PlayAudio> {
  late File file;
  late PlayerController controller;
  late StreamSubscription<PlayerState> playerStateSubscription;
  double? width;
  late Directory appDirectory;
  int _currentIndex = 1;
  late Timer emotionTimer = Timer(Duration.zero, () {});
  int emotionIndex = 0;
  bool isEmotionTimerRunning = false;

  final playerWaveStyle = const PlayerWaveStyle(
    fixedWaveColor: Colors.white54,
    liveWaveColor: Colors.white,
    spacing: 6,
  );

  @override
  void initState() {
    super.initState();
    controller = PlayerController();
    _preparePlayer();
    playerStateSubscription = controller.onPlayerStateChanged.listen((_) {
      setState(() {
        if (controller.playerState.isPlaying) {
          startEmotionTimer();
        } else {
          stopEmotionTimer();
        }
      });
    });
  }

  void startEmotionTimer() {
    if (!isEmotionTimerRunning) {
      emotionTimer = Timer.periodic(Duration(seconds: 7), (timer) {
        setState(() {
          emotionIndex = (emotionIndex + 1) % widget.predictedEmotions!.length;
        });
      });
      isEmotionTimerRunning = true;
    }
  }

  void stopEmotionTimer() {
    if (isEmotionTimerRunning) {
      emotionTimer.cancel();
      isEmotionTimerRunning = false;
    }
  }

  void _preparePlayer() async {
    appDirectory = await getApplicationDocumentsDirectory();
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      print("User not logged in.");
      return;
    }

    String userId = currentUser.uid;
    // Use Firebase Storage to get the audio file
    firebase_storage.Reference storageRef = firebase_storage
        .FirebaseStorage.instance
        .ref('user_folders/$userId/temp/temp.wav');

    try {
      // Get the download URL for the file
      String fileUrl = await storageRef.getDownloadURL();

      // Download the file to local storage
      File localFile = File('${appDirectory.path}/temp.wav');
      await http.get(Uri.parse(fileUrl)).then((http.Response response) async {
        await localFile.writeAsBytes(response.bodyBytes);
      });

      // Prepare player with extracting waveform
      controller.preparePlayer(
        path: localFile.path,
        shouldExtractWaveform: true,
      );

      // Extracting waveform
      controller
          .extractWaveformData(
            path: localFile.path,
            noOfSamples: playerWaveStyle.getSamplesForWidth(width ?? 200),
          )
          .then((waveformData) => debugPrint(waveformData.toString()));
    } catch (e) {
      print("Error fetching audio file: $e");
      // Handle error fetching audio file
    }
  }

  @override
  void dispose() {
    playerStateSubscription.cancel();
    controller.dispose();
    // Cancel the timer when disposing the widget
    emotionTimer.cancel();
    super.dispose();
    controller.stopPlayer();
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
                              controller.stopPlayer();
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
                                size: 21.88 * fem,
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
                                    controller.stopPlayer();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage()));
                                    break;
                                  case 2:
                                    FirebaseAuth.instance.signOut();
                                    controller.stopPlayer();
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
                    Container(
                      // autogroupzvuveah (Nshh8VHq2F18Xv76QhZVuV)
                      margin: EdgeInsets.fromLTRB(
                          22 * fem, 0 * fem, 26 * fem, 27 * fem),
                      width: double.infinity,
                      height: 295 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // httpslottiefilescomanimationse (1:1539)
                            left: 41 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 200 * fem,
                                height: 200 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/https-lottiefilescom-animations-enable-mic-eilzvxhxu3.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // httpslottiefilescomanimationsw (1:1544)
                            left: 0 * fem,
                            top: 199 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 281 * fem,
                                height: 96 * fem,
                                child: AudioFileWaveforms(
                                  size: Size(
                                    MediaQuery.of(context).size.width / 2,
                                    70,
                                  ),
                                  playerController: controller,
                                  waveformType: WaveformType.long,
                                  playerWaveStyle: const PlayerWaveStyle(
                                    fixedWaveColor: Colors.white54,
                                    liveWaveColor: Colors.blueAccent,
                                    spacing: 6,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80 * fem,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(6, 24, 72, 1),
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      child: Stack(
                        children: [
                          //SizedBox(width: 8 * fem),
                          Positioned(
                            top: 10 * fem,
                            left: 40 * fem,
                            child: IconButton(
                              onPressed: () async {
                                controller.playerState.isPlaying
                                    ? await controller.pausePlayer()
                                    : await controller.startPlayer(
                                        finishMode: FinishMode.loop,
                                      );
                              },
                              icon: Icon(
                                controller.playerState.isPlaying
                                    ? Icons.stop
                                    : Icons.play_arrow,
                                color: Colors.white,
                                size: 60.0,
                              ),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                          ),
                          Positioned(
                            left: 160 * fem,
                            top: 10 * fem,
                            child: Container(
                              width: 5.0,
                              height: 60 * fem,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 65 * fem,
                            top: 13 * fem,
                            child: IconButton(
                              onPressed: () {
                                // Add your cancel button functionality here
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.white,
                                size: 50.0,
                              ),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      // Display Speaker Info and Emotion

                      padding: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 0 * fem, 0 * fem),

                      width: double.infinity,

                      height: 40 * fem,

                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(2 * fem, 2 * fem),
                            blurRadius: 1 * fem,
                          ),
                        ],
                      ),

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Current Emotion: ', // Placeholder for date

                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: widget.predictedEmotions![
                                  emotionIndex], // Placeholder for date

                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                30 * fem, 2 * fem, 5 * fem, 1 * fem),
                            width: 42 * fem,
                            height: 42 * fem,
                            child: Text(
                              getEmojiForEmotion(
                                  widget.predictedEmotions![emotionIndex]),
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
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
                  controller.stopPlayer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mainPage()));
                  break;
                case 1:
                  break;
                case 2:
                  controller.stopPlayer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryPage()));
                  break;
                case 3:
                  controller.stopPlayer();
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
}
