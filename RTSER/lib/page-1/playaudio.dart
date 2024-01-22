import 'dart:async';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rtser/page-1/main-page.dart';

import 'history.dart';
import 'profile.dart';
import 'ser-process.dart';

class PlayAudio extends StatefulWidget {
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
      setState(() {});
    });
  }

  void _preparePlayer() async {
    appDirectory = await getApplicationDocumentsDirectory();

    // Use Firebase Storage to get the audio file
    firebase_storage.Reference storageRef = firebase_storage
        .FirebaseStorage.instance
        .ref('recordings/1705571835108.m4a');

    // Download the temporary audio file
    firebase_storage.TaskSnapshot task = await storageRef
        .writeToFile(File('${appDirectory.path}/1705571835108.m4a'));

    // Prepare player with extracting waveform
    controller.preparePlayer(
      path: '${appDirectory.path}/1705571835108.m4a',
      shouldExtractWaveform: true,
    );

    // Extracting waveform
    controller
        .extractWaveformData(
          path: '${appDirectory.path}/1705571835108.m4a',
          noOfSamples: playerWaveStyle.getSamplesForWidth(width ?? 200),
        )
        .then((waveformData) => debugPrint(waveformData.toString()));
  }

  @override
  void dispose() {
    playerStateSubscription.cancel();
    controller.dispose();
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
                                0 * fem, 0 * fem, 107 * fem, 1 * fem),
                            child: RichText(
                              text: TextSpan(
                                text: 'SER',
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frame31HJD (1:1396)
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Icon(
                              Icons.account_circle,
                              size: 40 * fem,
                              color:
                                  Colors.white, // Customize the color if needed
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
                    Positioned(
                      child: Container(
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
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Positioned(
                      bottom: 20 * fem,
                      child: Container(
                        width: 200 * fem,
                        height: 60 * fem,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your process button functionality here
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProcessPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue, // Adjust the color as needed
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            'Process',
                            style: TextStyle(
                              fontSize: 20 * fem,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
}
