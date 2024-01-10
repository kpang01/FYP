import 'package:flutter/material.dart';

import 'Onboarding-page3.dart';
import 'login-page.dart';

class Onboarding2 extends StatefulWidget {
  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // onboardingpageBQ9 (5:2)
          padding: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 55 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/page-1/images/Onboarding-page-2.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupymoboK3 (WyK3UE2dpo7HPc3VnfYmoB)
                margin:
                    EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 440 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle back navigation here
                        Navigator.pop(context);
                      },
                      child: Container(
                        // group316J9 (5:26)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 255 * fem, 0 * fem),
                        width: 35 * fem,
                        height: 35 * fem,
                        child: Image.asset(
                          'assets/page-1/images/Group 32.png',
                          width: 35 * fem,
                          height: 35 * fem,
                        ),
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
                        // skipBqP (5:25)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: RichText(
                          text: TextSpan(
                            text: 'Skip',
                            style: TextStyle(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame30dhP (5:3)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13.27 * fem),
                padding: EdgeInsets.fromLTRB(
                    40 * fem, 3 * fem, 49.97 * fem, 11.73 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group267sT (5:14)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 0 * fem, 27 * fem),
                      width: 42 * fem,
                      height: 10 * fem,
                      child: Image.asset(
                        'assets/page-1/images/group-26-sQR.png',
                        width: 42 * fem,
                        height: 10 * fem,
                      ),
                    ),
                    Container(
                      // trackyouremotionPKB (5:23)
                      margin: EdgeInsets.fromLTRB(
                          6 * fem, 0 * fem, 0 * fem, 7 * fem),
                      child: RichText(
                        text: TextSpan(
                          text: 'Track Your Emotion',
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffb63eca),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // rtserprovidesinsightsintoemoti (5:24)
                      constraints: BoxConstraints(
                        maxWidth: 296 * fem,
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text:
                              'RTSER provides insights into emotional dynamics by using machine learning technique.',
                          style: TextStyle(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w100,
                            color: Color(0xffb63fcb),
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
                    MaterialPageRoute(builder: (context) => Onboarding3()),
                  );
                },
                child: Container(
                  // group249Bs (5:20)
                  margin: EdgeInsets.fromLTRB(
                      105 * fem, 0 * fem, 105 * fem, 0 * fem),
                  width: double.infinity,
                  height: 50 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffba68c8),
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
                        text: 'Next',
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
      ),
    );
  }
}
