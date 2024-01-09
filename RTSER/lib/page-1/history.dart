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
        // historyX2M (1:1495)
        padding: EdgeInsets.fromLTRB(0 * fem, 41 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroupmqph2jo (NshfwGnACukrUqaUFYMqPh)
              margin:
                  EdgeInsets.fromLTRB(17 * fem, 0 * fem, 18 * fem, 17 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vectorZDw (1:1523)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 112.12 * fem, 0.68 * fem),
                    width: 21.88 * fem,
                    height: 21.32 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-nKX.png',
                      width: 21.88 * fem,
                      height: 21.32 * fem,
                    ),
                  ),
                  Container(
                    // history4Rb (1:1522)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 92 * fem, 0 * fem),
                    child: Text(
                      'History',
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
                    // frame31NBP (1:1520)
                    width: 40 * fem,
                    height: 40 * fem,
                    child: Image.asset(
                      'assets/page-1/images/frame-31-VLZ.png',
                      width: 40 * fem,
                      height: 40 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // vector6dB (1:1504)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 23.13 * fem, 15 * fem),
              width: 21.88 * fem,
              height: 25 * fem,
              child: Image.asset(
                'assets/page-1/images/vector-4rR.png',
                width: 21.88 * fem,
                height: 25 * fem,
              ),
            ),
            Container(
              // group63Dho (1:1496)
              margin:
                  EdgeInsets.fromLTRB(22 * fem, 0 * fem, 22 * fem, 532 * fem),
              padding:
                  EdgeInsets.fromLTRB(15 * fem, 6 * fem, 13 * fem, 5 * fem),
              width: double.infinity,
              height: 70 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffc1c0c0)),
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
                    // sadsGZ (1:1501)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 15 * fem, 1 * fem),
                    width: 42 * fem,
                    height: 42 * fem,
                    child: Image.asset(
                      'assets/page-1/images/sad-YQV.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroupojo5Bo3 (Nshg9GSB4zM9vHhTBtoJo5)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 37 * fem, 0 * fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // speakernameK8Z (1:1502)
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
                          // sadRxH (1:1500)
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
                          // april2023Yn1 (1:1498)
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
                          // qm7 (1:1499)
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
                    // httpslottiefilescomanimationsp (1:1503)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 40 * fem, 1 * fem),
                    width: 58 * fem,
                    height: 58 * fem,
                    child: Image.asset(
                      'assets/page-1/images/https-lottiefilescom-animations-percentage-loader-8mkqjvxpxz-Wb7.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // vectorGLd (1:1661)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                    width: 20 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-4Qd.png',
                      width: 20 * fem,
                      height: 20 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame5yF3 (1:1524)
              padding:
                  EdgeInsets.fromLTRB(39 * fem, 10.15 * fem, 38 * fem, 6 * fem),
              width: double.infinity,
              height: 60 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff727272)),
                color: Color(0xffffffff),
              ),
              child: Container(
                // group396aZ (1:1525)
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // group383Eu (1:1526)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3.15 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorB6D (1:1527)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 30 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-uid.png',
                              width: 30 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectorHQ9 (1:1530)
                            width: 20 * fem,
                            height: 27.69 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-UuT.png',
                              width: 20 * fem,
                              height: 27.69 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectorQjf (1:1529)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 25 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-PDF.png',
                              width: 25 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 60 * fem,
                          ),
                          Container(
                            // vectorXZP (1:1528)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.92 * fem),
                            width: 25 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-iS1.png',
                              width: 25 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupmszbTC9 (NshgWfzAzvTbQPdoSjMszb)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // homenkD (1:1531)
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
                            // serJiZ (1:1534)
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
                            // historycz9 (1:1532)
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
                                color: Color(0xff407bff),
                              ),
                            ),
                          ),
                          Text(
                            // profileXbK (1:1533)
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
