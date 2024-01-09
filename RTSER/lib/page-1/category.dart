import 'package:flutter/material.dart';
import 'package:rtser/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // categoryvkD (1:1423)
        padding: EdgeInsets.fromLTRB(0 * fem, 41 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup8xtkpqb (Nshe75L7PqMUzTLzCo8xtK)
              margin:
                  EdgeInsets.fromLTRB(17 * fem, 0 * fem, 18 * fem, 23 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vector8rH (1:1472)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 69.12 * fem, 0.68 * fem),
                    width: 21.88 * fem,
                    height: 21.32 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-gNq.png',
                      width: 21.88 * fem,
                      height: 21.32 * fem,
                    ),
                  ),
                  Container(
                    // emotioncategory3iM (1:1471)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 50 * fem, 0 * fem),
                    child: Text(
                      'Emotion Category',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // frame31jbB (1:1473)
                    width: 40 * fem,
                    height: 40 * fem,
                    child: Image.asset(
                      'assets/page-1/images/frame-31-QtV.png',
                      width: 40 * fem,
                      height: 40 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame21sBb (1:1424)
              margin:
                  EdgeInsets.fromLTRB(50 * fem, 0 * fem, 50 * fem, 94 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupipvxarh (NsheKz8GNxiHxSs4J8ipvX)
                    width: double.infinity,
                    height: 120 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group46KpH (1:1425)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 20 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              10 * fem, 0 * fem, 10 * fem, 8 * fem),
                          width: 120 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff75d6f5),
                            borderRadius: BorderRadius.circular(15 * fem),
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
                                // angryBbb (1:1428)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 9 * fem),
                                width: 100 * fem,
                                height: 78 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/angry-oUZ.png',
                                ),
                              ),
                              Text(
                                // angryW85 (1:1427)
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
                        Container(
                          // group48Epm (1:1429)
                          padding: EdgeInsets.fromLTRB(
                              12 * fem, 4 * fem, 12 * fem, 8 * fem),
                          width: 120 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff65b5ea),
                            borderRadius: BorderRadius.circular(15 * fem),
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
                                // calmKLR (1:1432)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                width: 96 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/calm.png',
                                ),
                              ),
                              Text(
                                // calmEyB (1:1431)
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Container(
                    // autogroupsx4fYU5 (NsheW9VzzwmaLpBrvWsX4F)
                    width: double.infinity,
                    height: 122 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group49UsX (1:1433)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 20 * fem, 0 * fem),
                          width: 120 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // calmDKK (1:1434)
                                left: 0 * fem,
                                top: 2 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 120 * fem,
                                    height: 120 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
                                        color: Color(0xffffd966),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0 * fem, 4 * fem),
                                            blurRadius: 2 * fem,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // disgustVnd (1:1435)
                                left: 22 * fem,
                                top: 89 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 77 * fem,
                                    height: 25 * fem,
                                    child: Text(
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
                                  ),
                                ),
                              ),
                              Positioned(
                                // disgustoHX (1:1436)
                                left: 31 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 60 * fem,
                                    height: 75 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/disgust-1Fs.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group51Jk5 (1:1437)
                          width: 120 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // calmfKj (1:1438)
                                left: 0 * fem,
                                top: 2 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 120 * fem,
                                    height: 120 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
                                        color: Color(0xffaeffac),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0 * fem, 4 * fem),
                                            blurRadius: 2 * fem,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // fearZAD (1:1439)
                                left: 38 * fem,
                                top: 89 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 44 * fem,
                                    height: 25 * fem,
                                    child: Text(
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
                                  ),
                                ),
                              ),
                              Positioned(
                                // fearexM (1:1440)
                                left: 30 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 60 * fem,
                                    height: 75 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/fear-kE1.png',
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
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Container(
                    // autogroupedssZZX (NsheftimCdkSm7nXwBEDSs)
                    width: double.infinity,
                    height: 120 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // happyudP (1:1441)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 20 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              28 * fem, 8 * fem, 28 * fem, 8 * fem),
                          width: 120 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffff829b),
                            borderRadius: BorderRadius.circular(15 * fem),
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
                                // happyyt9 (1:1444)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 4 * fem),
                                width: 47 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/happy.png',
                                ),
                              ),
                              Text(
                                // happyWdB (1:1443)
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
                        Container(
                          // group533t1 (1:1445)
                          padding: EdgeInsets.fromLTRB(
                              24 * fem, 11 * fem, 23 * fem, 8 * fem),
                          width: 120 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff9747ff),
                            borderRadius: BorderRadius.circular(15 * fem),
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
                                // neutraljVw (1:1448)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 16 * fem),
                                width: 54 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/neutral-3xZ.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                // neutralraZ (1:1447)
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Container(
                    // autogroupauqvmxR (NsheqdwXQKjKBRPCwqauqV)
                    width: double.infinity,
                    height: 120 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group45vqK (1:1449)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 20 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              3 * fem, 0 * fem, 0.35 * fem, 8 * fem),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffed892e),
                            borderRadius: BorderRadius.circular(15 * fem),
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
                                // sad1bs (1:1452)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 9 * fem),
                                width: 116.65 * fem,
                                height: 78 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/sad-7fb.png',
                                ),
                              ),
                              Container(
                                // sadjnm (1:1451)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 2.65 * fem, 0 * fem),
                                child: Text(
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
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group55eeq (1:1453)
                          padding: EdgeInsets.fromLTRB(
                              18 * fem, 4 * fem, 17 * fem, 8 * fem),
                          width: 120 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffb425cd),
                            borderRadius: BorderRadius.circular(15 * fem),
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
                                // suprise8pu (1:1456)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 1 * fem, 8 * fem),
                                width: 60 * fem,
                                height: 75 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/suprise.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                // surpriseU85 (1:1455)
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
              // frame5QnR (1:1475)
              padding:
                  EdgeInsets.fromLTRB(39 * fem, 10.15 * fem, 38 * fem, 6 * fem),
              width: double.infinity,
              height: 60 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff727272)),
                color: Color(0xffffffff),
              ),
              child: Container(
                // group398TX (1:1476)
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // group385df (1:1477)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3.15 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorDUy (1:1478)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 30 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector.png',
                              width: 30 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectorXEm (1:1481)
                            width: 20 * fem,
                            height: 27.69 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-oFb.png',
                              width: 20 * fem,
                              height: 27.69 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectore4V (1:1480)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 25 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-4XX.png',
                              width: 25 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vector9mw (1:1479)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 25 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Nfo.png',
                              width: 25 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupes6f5fb (Nshfcceae7wwaMqPTfES6f)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // homeDG1 (1:1482)
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
                                color: Color(0xff727272),
                              ),
                            ),
                          ),
                          Container(
                            // serXXb (1:1485)
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
                            // history3kq (1:1483)
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
                            // profilemRw (1:1484)
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
