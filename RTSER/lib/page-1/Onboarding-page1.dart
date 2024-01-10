import 'package:flutter/material.dart';
import 'package:rtser/page-1/Onboarding-page2.dart';

import 'login-page.dart';

class OnBoarding1 extends StatefulWidget {
  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // oboardingpagenDj (1:2)
            padding: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 55 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/page-1/images/Onboarding-page-1.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loginPage()),
                    );
                  },
                  child: Container(
                    // skipxvq (1:10)
                    margin: EdgeInsets.fromLTRB(
                        277 * fem, 0 * fem, 0 * fem, 460 * fem),
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
                Container(
                  // frame30Drm (1:217)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 13.27 * fem),
                  padding: EdgeInsets.fromLTRB(
                      41.5 * fem, 0 * fem, 51.47 * fem, 11.73 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group27hmw (1:226)
                        margin: EdgeInsets.fromLTRB(
                            5 * fem, 0 * fem, 0 * fem, 27 * fem),
                        width: 42 * fem,
                        height: 10 * fem,
                        child: Image.asset(
                          'assets/page-1/images/group-27.png',
                          width: 42 * fem,
                          height: 10 * fem,
                        ),
                      ),
                      Container(
                        // getsignupcP7 (1:224)
                        margin: EdgeInsets.fromLTRB(
                            6 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: RichText(
                          text: TextSpan(
                            text: 'Get Sign Up!',
                            style: TextStyle(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff3e9c59),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // signupbeforeexplorethefunction (1:225)
                        constraints: BoxConstraints(
                          maxWidth: 296 * fem,
                        ),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                                'Sign up before explore the function and some special feature in our mobile application.',
                            style: TextStyle(
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w100,
                              color: Color(0xff3e9d59),
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
                      MaterialPageRoute(builder: (context) => Onboarding2()),
                    );
                  },
                  child: Container(
                    // group24ycy (1:221)
                    margin: EdgeInsets.fromLTRB(
                        105 * fem, 0 * fem, 105 * fem, 0 * fem),
                    width: double.infinity,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff92e3a9),
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
      ),
    );
  }
}
