import 'package:flutter/material.dart';

import 'login-page.dart';

class Onboarding3 extends StatefulWidget {
  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // onboardingpageG7P (5:164)
        padding: EdgeInsets.fromLTRB(0 * fem, 44 * fem, 0 * fem, 55 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/page-1/images/Onboarding-page-3.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Handle back navigation here
                Navigator.pop(context);
              },
              child: Container(
                // group32781 (5:185)
                margin:
                    EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 450 * fem),
                width: 35 * fem,
                height: 35 * fem,
                child: Image.asset(
                  'assets/page-1/images/Group 32.png',
                  width: 35 * fem,
                  height: 35 * fem,
                ),
              ),
            ),
            Container(
              // frame301z5 (5:167)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13.29 * fem),
              padding: EdgeInsets.fromLTRB(
                  42.5 * fem, 3 * fem, 54.47 * fem, 0.71 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group26WA9 (5:174)
                    margin: EdgeInsets.fromLTRB(
                        7 * fem, 0 * fem, 0 * fem, 27 * fem),
                    width: 42 * fem,
                    height: 10 * fem,
                    child: Image.asset(
                      'assets/page-1/images/group-26.png',
                      width: 42 * fem,
                      height: 10 * fem,
                    ),
                  ),
                  Container(
                    // morefasterMRf (5:180)
                    margin: EdgeInsets.fromLTRB(
                        8 * fem, 0 * fem, 0 * fem, 18 * fem),
                    child: RichText(
                      text: TextSpan(
                        text: 'More Faster',
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff407bff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // rtserprovidesrealtimefeedbacko (5:181)
                    constraints: BoxConstraints(
                      maxWidth: 292 * fem,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            'RTSER provides real-time feedback on the emotional tone of their own speech or others.',
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff407bff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginPage()),
                );
              },
              child: Container(
                // group24Mpy (5:182)
                margin:
                    EdgeInsets.fromLTRB(105 * fem, 0 * fem, 105 * fem, 0 * fem),
                width: double.infinity,
                height: 50 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff407bff),
                  borderRadius: BorderRadius.circular(60 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 6 * fem),
                      blurRadius: 3 * fem,
                    ),
                  ],
                ),

                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Get Started',
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff),
                      ),
                    ),
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
