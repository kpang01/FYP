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
        // profilemrV (8:11)
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(40 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupt4rrHZw (NshmjXHYoRPgjWg678T4RR)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 600 * fem,
                height: 655 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // group23Pcy (8:12)
                      left: 30 * fem,
                      top: 17.3305664062 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 307 * fem,
                          height: 12.76 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-23.png',
                            width: 307 * fem,
                            height: 12.76 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse7gMB (8:26)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 600 * fem,
                          height: 600 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300 * fem),
                              color: Color(0xff407bff),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/ellipse-7-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse26mdX (8:27)
                      left: 125 * fem,
                      top: 137 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 110 * fem,
                          height: 110 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55 * fem),
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vectorH65 (8:28)
                      left: 130 * fem,
                      top: 142 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 100 * fem,
                          height: 100 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-dD7.png',
                            width: 100 * fem,
                            height: 100 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse10QAh (8:29)
                      left: 195 * fem,
                      top: 207 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 40 * fem,
                          height: 40 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/ellipse-10-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // image10HkH (8:49)
                      left: 308 * fem,
                      top: 30 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 30 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/page-1/images/image-10.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroup3mqxCcM (Nshmubq68wqHXU44oy3MQX)
              left: 0 * fem,
              top: 247 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(12 * fem, 42 * fem, 18 * fem, 73 * fem),
                width: 360 * fem,
                height: 553 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame246Bw (8:30)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      padding: EdgeInsets.fromLTRB(
                          13 * fem, 37 * fem, 13 * fem, 104 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffe8e5e5),
                        borderRadius: BorderRadius.circular(40 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // group12aN1 (8:31)
                            width: 51 * fem,
                            height: 39 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // nameX2M (8:32)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Name:',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // namebY1 (8:33)
                                  left: 2 * fem,
                                  top: 19 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 42 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'name',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff727272),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1 * fem,
                          ),
                          Container(
                            // group13g3f (8:34)
                            width: 123 * fem,
                            height: 39 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // matricnumberE5B (8:35)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 123 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Matric Number:',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // matricnumberKcR (8:36)
                                  left: 2 * fem,
                                  top: 19 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 113 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Matric Number',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff727272),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1 * fem,
                          ),
                          Container(
                            // group14CRK (8:37)
                            width: 37 * fem,
                            height: 39 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // age9LZ (8:38)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 37 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Age:',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // age2fF (8:39)
                                  left: 2 * fem,
                                  top: 19 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 30 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Age',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff727272),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1 * fem,
                          ),
                          Container(
                            // group15XM7 (8:40)
                            width: 64 * fem,
                            height: 39 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // gendersvm (8:41)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 64 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Gender:',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // genderyyo (8:42)
                                  left: 3 * fem,
                                  top: 19 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 56 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Gender',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff727272),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1 * fem,
                          ),
                          Container(
                            // group16fbj (8:43)
                            width: 45 * fem,
                            height: 39 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // raceDNM (8:44)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 45 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Race:',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // race7yX (8:45)
                                  left: 2 * fem,
                                  top: 19 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 38 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Race',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff727272),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1 * fem,
                          ),
                          Container(
                            // group17QSq (8:46)
                            width: 49 * fem,
                            height: 39 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // emailLrH (8:47)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 49 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Email:',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // email2z1 (8:48)
                                  left: 3 * fem,
                                  top: 19 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 41 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Email',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff727272),
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
                    Container(
                      // group61LUu (8:50)
                      margin: EdgeInsets.fromLTRB(
                          117 * fem, 0 * fem, 113 * fem, 0 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff407bff),
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'EDIT',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // frame5o7b (8:53)
              left: 0 * fem,
              top: 735 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(39 * fem, 11 * fem, 38 * fem, 11 * fem),
                width: 360 * fem,
                height: 65 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff727272)),
                  color: Color(0xffffffff),
                ),
                child: Container(
                  // group39J4M (8:54)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // group753Xj (8:55)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 60 * fem, 0 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectornER (8:56)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 3 * fem),
                              width: 30 * fem,
                              height: 25 * fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-SQD.png',
                                width: 30 * fem,
                                height: 25 * fem,
                              ),
                            ),
                            Text(
                              // homehMP (8:57)
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
                          ],
                        ),
                      ),
                      Container(
                        // group76dkq (8:65)
                        width: 20 * fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // vectorndj (8:66)
                              width: 20 * fem,
                              height: 30 * fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-BfB.png',
                                width: 20 * fem,
                                height: 30 * fem,
                              ),
                            ),
                            Container(
                              // serXbK (8:67)
                              width: double.infinity,
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
                          ],
                        ),
                      ),
                      Container(
                        // autogroupydztrdb (NshnmF53GSW99XSX2FyDzT)
                        padding: EdgeInsets.fromLTRB(
                            55.5 * fem, 2 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // group77zE1 (8:58)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 51.5 * fem, 0 * fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // vectorKXB (8:59)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 1 * fem, 3 * fem),
                                    width: 25 * fem,
                                    height: 25 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-Hws.png',
                                      width: 25 * fem,
                                      height: 25 * fem,
                                    ),
                                  ),
                                  Text(
                                    // historyeZT (8:60)
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
                              // group78BpH (8:61)
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group38wYZ (8:62)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                    width: 25 * fem,
                                    height: 25 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-38-hpy.png',
                                      width: 25 * fem,
                                      height: 25 * fem,
                                    ),
                                  ),
                                  Text(
                                    // profilesBK (8:64)
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
            ),
          ],
        ),
      ),
    );
  }
}
