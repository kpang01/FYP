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
        // resultsurpriseund (1:1617)
        padding: EdgeInsets.fromLTRB(0 * fem, 41 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff06030b),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupvceop8u (NshjEWcqkWJCkjwZrpvCeo)
              margin:
                  EdgeInsets.fromLTRB(17 * fem, 0 * fem, 14 * fem, 63 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vector9BB (1:1630)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 109.62 * fem, 0.68 * fem),
                    width: 21.88 * fem,
                    height: 21.32 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-5pq.png',
                      width: 21.88 * fem,
                      height: 21.32 * fem,
                    ),
                  ),
                  Container(
                    // resultetd (1:1645)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 1 * fem, 94.5 * fem, 0 * fem),
                    child: Text(
                      'Result',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff3daccf),
                      ),
                    ),
                  ),
                  Container(
                    // vectorN3w (1:1629)
                    width: 40 * fem,
                    height: 40 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-885.png',
                      width: 40 * fem,
                      height: 40 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // emotionrecognizedhru (1:1618)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 20 * fem),
              constraints: BoxConstraints(
                maxWidth: 198 * fem,
              ),
              child: Text(
                'Emotion \nRecognized!',
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
            Container(
              // surprisebxH (1:1620)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              width: 200 * fem,
              height: 200 * fem,
              child: Image.asset(
                'assets/page-1/images/surprise.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // group798hK (1:1621)
              margin:
                  EdgeInsets.fromLTRB(101 * fem, 0 * fem, 101 * fem, 76 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // surprisefSM (1:1622)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'SURPRISE',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff30e8ff),
                      ),
                    ),
                  ),
                  Text(
                    // a3X (1:1623)
                    '89.00 %',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff30e8ff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group627p9 (1:1624)
              margin:
                  EdgeInsets.fromLTRB(40 * fem, 0 * fem, 38 * fem, 81 * fem),
              width: double.infinity,
              height: 50 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupjelbEtm (NshjWazPX52xGRP32qjELb)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 42 * fem, 0 * fem),
                    width: 120 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff407bff),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupdbs3uV7 (Nshja14N9tFwbM8ut9dbS3)
                    width: 120 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff407bff),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Try again',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame5BhX (1:1646)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(39 * fem, 10.15 * fem, 38 * fem, 6 * fem),
              width: double.infinity,
              height: 60 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff727272)),
                color: Color(0xffffffff),
              ),
              child: Container(
                // group395nu (1:1647)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // group67Rrm (1:1648)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 60 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorAZT (1:1649)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 5.92 * fem),
                            width: 30 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-otq.png',
                              width: 30 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          Text(
                            // home5wK (1:1650)
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
                      // group68dT3 (1:1658)
                      width: 20 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // vectorNfX (1:1659)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 3.15 * fem),
                            width: 20 * fem,
                            height: 27.69 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-hBB.png',
                              width: 20 * fem,
                              height: 27.69 * fem,
                            ),
                          ),
                          Container(
                            // ser6Ld (1:1660)
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
                      // autogroupbshzpXX (NshjpAKSPtqzTXqNpebShZ)
                      padding: EdgeInsets.fromLTRB(
                          55.5 * fem, 1.85 * fem, 0 * fem, 0 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // group69A5b (1:1651)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 51.5 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorhLR (1:1652)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 5.92 * fem),
                                  width: 25 * fem,
                                  height: 23.08 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-Foj.png',
                                    width: 25 * fem,
                                    height: 23.08 * fem,
                                  ),
                                ),
                                Text(
                                  // history27o (1:1653)
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
                            // group70xn9 (1:1654)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group38hzd (1:1655)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 5.92 * fem),
                                  width: 25 * fem,
                                  height: 23.08 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-38-9mF.png',
                                    width: 25 * fem,
                                    height: 23.08 * fem,
                                  ),
                                ),
                                Text(
                                  // profileEDs (1:1657)
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
