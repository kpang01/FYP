import 'package:flutter/material.dart';
import 'package:rtser/utils.dart';

class mainPage extends StatefulWidget {
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // mainpageXH7 (1:1298)
        padding: EdgeInsets.fromLTRB(0 * fem, 41 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff06030b),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupds3vRdP (Nshc3oRX2iMwMFhnDdDS3V)
              margin: EdgeInsets.fromLTRB(
                  130.95 * fem, 0 * fem, 18 * fem, 18 * fem),
              width: double.infinity,
              height: 40 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame59YT7 (1:1343)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 5 * fem, 78.5 * fem, 5 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group58gJR (1:1344)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 9.55 * fem, 0 * fem),
                          width: 30 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-58.png',
                            width: 30 * fem,
                            height: 30 * fem,
                          ),
                        ),
                        Container(
                          // rtserbRP (1:1386)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 2.5 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'RTSER',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff97bacc),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame31HJD (1:1396)
                    width: 40 * fem,
                    height: 40 * fem,
                    child: Image.asset(
                      'assets/page-1/images/frame-31.png',
                      width: 40 * fem,
                      height: 40 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // welcomebacknicknamepZ3 (1:1300)
              margin: EdgeInsets.fromLTRB(24 * fem, 0 * fem, 0 * fem, 14 * fem),
              constraints: BoxConstraints(
                maxWidth: 156 * fem,
              ),
              child: Text(
                'Welcome back, \nNickname.',
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
              // frame20hcq (1:1342)
              margin:
                  EdgeInsets.fromLTRB(15 * fem, 0 * fem, 15 * fem, 36 * fem),
              width: double.infinity,
              height: 170 * fem,
              decoration: BoxDecoration(
                color: Color(0xff686cd5),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
            ),
            Container(
              // group5629K (1:1302)
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 24 * fem),
              width: 1065 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupxrjjYdT (NshciceBGZ43qeCpRBXRJj)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 738 * fem, 10 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // emotionscategory5NV (1:1303)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 105 * fem, 0 * fem),
                          child: Text(
                            'Emotions Category',
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
                          // more2S9 (1:1338)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 2 * fem),
                          child: Text(
                            'More',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff407bff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame17LSq (1:1304)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // group444Nq (1:1305)
                          width: 120 * fem,
                          height: 120 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Container(
                            // frame9btZ (1:1306)
                            padding: EdgeInsets.fromLTRB(
                                5 * fem, 0 * fem, 5 * fem, 8 * fem),
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffed892e),
                              borderRadius: BorderRadius.circular(10 * fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0 * fem, 4 * fem),
                                  blurRadius: 2 * fem,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // sadgQD (1:1307)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 9 * fem),
                                  width: 110 * fem,
                                  height: 78 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/sad.png',
                                  ),
                                ),
                                Text(
                                  // sadzA1 (1:1309)
                                  'Sad',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff263238),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15 * fem,
                        ),
                        Container(
                          // frame106yj (1:1310)
                          padding: EdgeInsets.fromLTRB(
                              10 * fem, 0 * fem, 10 * fem, 8 * fem),
                          decoration: BoxDecoration(
                            color: Color(0xff75d6f5),
                            borderRadius: BorderRadius.circular(10 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // angryCms (1:1311)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 9 * fem),
                                width: 100 * fem,
                                height: 78 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/angry.png',
                                ),
                              ),
                              Text(
                                // angrywDf (1:1313)
                                'Angry',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15 * fem,
                        ),
                        Container(
                          // frame114ZB (1:1314)
                          padding: EdgeInsets.fromLTRB(
                              12 * fem, 0 * fem, 12 * fem, 10 * fem),
                          width: 120 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff65b5ea),
                            borderRadius: BorderRadius.circular(10 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // calmN45 (1:1315)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: 96 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/calm-gQM.png',
                                ),
                              ),
                              Text(
                                // calmhMF (1:1317)
                                'Calm',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15 * fem,
                        ),
                        Container(
                          // frame122PX (1:1318)
                          padding: EdgeInsets.fromLTRB(
                              28 * fem, 0 * fem, 28 * fem, 10 * fem),
                          width: 120 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffff829b),
                            borderRadius: BorderRadius.circular(10 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // happy7vm (1:1319)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: 47 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/happy-PSM.png',
                                ),
                              ),
                              Text(
                                // happy45K (1:1321)
                                'Happy',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15 * fem,
                        ),
                        Container(
                          // frame13Au3 (1:1322)
                          padding: EdgeInsets.fromLTRB(
                              21.5 * fem, 0 * fem, 21.5 * fem, 10 * fem),
                          width: 120 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffffd966),
                            borderRadius: BorderRadius.circular(10 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // disgustf57 (1:1323)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: 60 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/disgust.png',
                                ),
                              ),
                              Text(
                                // disgustPG1 (1:1325)
                                'Disgust',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15 * fem,
                        ),
                        Container(
                          // frame147C1 (1:1326)
                          padding: EdgeInsets.fromLTRB(
                              30 * fem, 0 * fem, 30 * fem, 10 * fem),
                          width: 120 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffaeffac),
                            borderRadius: BorderRadius.circular(10 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // fearQgu (1:1327)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: 60 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/fear.png',
                                ),
                              ),
                              Text(
                                // fearLqT (1:1329)
                                'Fear',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15 * fem,
                        ),
                        Container(
                          // frame15g8d (1:1334)
                          padding: EdgeInsets.fromLTRB(
                              23.5 * fem, 14 * fem, 23.5 * fem, 11 * fem),
                          width: 120 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff9747ff),
                            borderRadius: BorderRadius.circular(10 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // neutralB5P (1:1335)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: 54 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/neutral.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                // neutralJfo (1:1337)
                                'Neutral',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15 * fem,
                        ),
                        Container(
                          // frame163NV (1:1330)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 2 * fem),
                          padding: EdgeInsets.fromLTRB(
                              17.5 * fem, 0 * fem, 17.5 * fem, 10 * fem),
                          width: 120 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffb63fcb),
                            borderRadius: BorderRadius.circular(10 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 2 * fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // supriseKL1 (1:1331)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: 60 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/suprise-GsX.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                // surpriseqZF (1:1333)
                                'Surprise',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff263238),
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
            Container(
              // recentaWq (1:1340)
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 7 * fem),
              child: Text(
                'Recent',
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
              // autogroupslef6k5 (NshcCYfwptxcebxY9ksLef)
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 14 * fem, 5 * fem),
              padding:
                  EdgeInsets.fromLTRB(5 * fem, 15 * fem, 6 * fem, 15 * fem),
              width: double.infinity,
              height: 154 * fem,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/page-1/images/frame-19.png',
                  ),
                ),
              ),
              child: Container(
                // group63oPb (1:1387)
                padding:
                    EdgeInsets.fromLTRB(15 * fem, 6 * fem, 7 * fem, 5 * fem),
                width: double.infinity,
                height: 70 * fem,
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
                    Container(
                      // sadHJm (1:1392)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 15 * fem, 1 * fem),
                      width: 42 * fem,
                      height: 42 * fem,
                      child: Image.asset(
                        'assets/page-1/images/sad-iDj.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroupq21hCgd (NshcPxWbhmF8wATjdJQ21h)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 37 * fem, 0 * fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // speakernameius (1:1393)
                            'Speaker name',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 11 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 2 * fem,
                          ),
                          Text(
                            // sadFeu (1:1391)
                            'Sad',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xb2000000),
                            ),
                          ),
                          SizedBox(
                            height: 2 * fem,
                          ),
                          Text(
                            // april2023ax5 (1:1389)
                            '12 April 2023',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xb2000000),
                            ),
                          ),
                          SizedBox(
                            height: 2 * fem,
                          ),
                          Text(
                            // i2h (1:1390)
                            '00:12:23',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xb2000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // httpslottiefilescomanimationsp (1:1395)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 36 * fem, 1 * fem),
                      width: 58 * fem,
                      height: 58 * fem,
                      child: Image.asset(
                        'assets/page-1/images/https-lottiefilescom-animations-percentage-loader-8mkqjvxpxz.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      // moreMrM (1:1394)
                      'More',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff407bff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // frame5Hzu (1:1412)
              padding:
                  EdgeInsets.fromLTRB(39 * fem, 10.15 * fem, 38 * fem, 6 * fem),
              width: double.infinity,
              height: 60 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff727272)),
                color: Color(0xffffffff),
              ),
              child: Container(
                // group39DNm (1:1413)
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // group38y73 (1:1414)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3.15 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorsy7 (1:1415)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 30 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Bzm.png',
                              width: 30 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectorNus (1:1418)
                            width: 20 * fem,
                            height: 27.69 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Kz5.png',
                              width: 20 * fem,
                              height: 27.69 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectorVjb (1:1417)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 25 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-y81.png',
                              width: 25 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectorokH (1:1416)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 25 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-MY9.png',
                              width: 25 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupvnaxwbb (NshdkAmHAew94q5bVDvnaX)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // homeH9f (1:1419)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 61 * fem, 0 * fem),
                            child: Text(
                              'Home',
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
                          Container(
                            // ser15f (1:1422)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 56.5 * fem, 0 * fem),
                            child: Text(
                              'SER',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff727272),
                              ),
                            ),
                          ),
                          Container(
                            // history7uP (1:1420)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 51.5 * fem, 0 * fem),
                            child: Text(
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
                          ),
                          Text(
                            // profileqaV (1:1421)
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
            ),
          ],
        ),
      ),
    );
  }
}
