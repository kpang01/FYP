import 'dart:async';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rtser/utils.dart';

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
        .ref('your_storage_path/temp_audio.m4a');

    // Download the temporary audio file
    firebase_storage.TaskSnapshot task = await storageRef
        .writeToFile(File('${appDirectory.path}/temp_audio.m4a'));

    // Prepare player with extracting waveform
    controller.preparePlayer(
      path: '${appDirectory.path}/temp_audio.m4a',
      shouldExtractWaveform: true,
    );

    // Extracting waveform
    controller
        .extractWaveformData(
          path: '${appDirectory.path}/temp_audio.m4a',
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
    return Container(
      width: double.infinity,
      child: Container(
        // serv6y (1:1536)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff06030b),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup5kkdf4Z (NshhNjP6YiCrzWkPGk5kKd)
              padding:
                  EdgeInsets.fromLTRB(17 * fem, 41 * fem, 14 * fem, 35 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup3yw9n9B (NshgzfBYM7Axm7FRdZ3yw9)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectori2q (1:1538)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 121.12 * fem, 0.68 * fem),
                          width: 21.88 * fem,
                          height: 21.32 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-jWm.png',
                            width: 21.88 * fem,
                            height: 21.32 * fem,
                          ),
                        ),
                        Container(
                          // serpLm (1:1563)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 107 * fem, 1 * fem),
                          child: Text(
                            'SER',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // vectorveh (1:1537)
                          width: 40 * fem,
                          height: 40 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-Gx5.png',
                            width: 40 * fem,
                            height: 40 * fem,
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
                                child: Row(
                                  children: [
                                    if (!controller.playerState.isStopped)
                                      IconButton(
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
                                        ),
                                        color: Colors.white,
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                      ),
                                    AudioFileWaveforms(
                                      size: Size(
                                          MediaQuery.of(context).size.width / 2,
                                          70),
                                      playerController: controller,
                                      waveformType: WaveformType
                                          .long, // or any default value you want
                                      playerWaveStyle: playerWaveStyle,
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // fu7 (1:1543)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
                    child: Text(
                      '00:00:00',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupqrefBMf (NshhD9piuwTMm33N7AqrEF)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 70 * fem),
              width: 360 * fem,
              height: 65 * fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-qref.png',
                width: 360 * fem,
                height: 65 * fem,
              ),
            ),
            Container(
              // group61gpD (1:1546)
              margin:
                  EdgeInsets.fromLTRB(130 * fem, 0 * fem, 130 * fem, 80 * fem),
              width: double.infinity,
              height: 50 * fem,
              decoration: BoxDecoration(
                color: Color(0xff407bff),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Center(
                child: Text(
                  'PROCESS',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              // frame5x13 (1:1564)
              padding:
                  EdgeInsets.fromLTRB(39 * fem, 10.15 * fem, 38 * fem, 6 * fem),
              width: double.infinity,
              height: 60 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff727272)),
                color: Color(0xffffffff),
              ),
              child: Container(
                // group39UEH (1:1565)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // group67RQR (1:1566)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 60 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vector9LR (1:1567)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 5.92 * fem),
                            width: 30 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-uwB.png',
                              width: 30 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          Text(
                            // home4iH (1:1568)
                            'Home',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff727272),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group68D5P (1:1576)
                      width: 20 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // vectorxof (1:1577)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 3.15 * fem),
                            width: 20 * fem,
                            height: 27.69 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-e4m.png',
                              width: 20 * fem,
                              height: 27.69 * fem,
                            ),
                          ),
                          Container(
                            // ser69B (1:1578)
                            width: double.infinity,
                            child: Text(
                              'SER',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff407bff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupxpioRSM (NshhuDWJQfNi9cio9tXpio)
                      padding: EdgeInsets.fromLTRB(
                          55.5 * fem, 1.85 * fem, 0 * fem, 0 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // group69ZHf (1:1569)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 51.5 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectortqj (1:1570)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 5.92 * fem),
                                  width: 25 * fem,
                                  height: 23.08 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-iUD.png',
                                    width: 25 * fem,
                                    height: 23.08 * fem,
                                  ),
                                ),
                                Text(
                                  // history2BF (1:1571)
                                  'History',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group70mPj (1:1572)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group38X81 (1:1573)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 5.92 * fem),
                                  width: 25 * fem,
                                  height: 23.08 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-38-DiV.png',
                                    width: 25 * fem,
                                    height: 23.08 * fem,
                                  ),
                                ),
                                Text(
                                  // profilepcu (1:1575)
                                  'Profile',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff727272),
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
            ),
          ],
        ),
      ),
    );
  }
}
