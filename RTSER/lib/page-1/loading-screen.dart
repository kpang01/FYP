import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:rtser/page-1/Onboarding-page1.dart';
import 'package:rtser/utils.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 5 seconds and then navigate to the next page
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnBoarding1()), // Replace NextPage with your actual next page widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(
            101 * fem, 302 * fem, 101 * fem, 0), // Removed bottom padding
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/page-1/images/loading-screen-bg.png'),
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1.5 * fem, 0 * fem),
                width: 120.38 * fem,
                height: 115.63 * fem,
                child: Image.asset(
                  'assets/page-1/images/auto-group-8gcs.png',
                  width: 120.38 * fem,
                  height: 115.63 * fem,
                ),
              ),
              Text(
                'RTSER',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 48 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff0a48d4),
                ),
              ),
              SizedBox(height: 60.0),
              // Removed Positioned widget
              LoadingAnimationWidget.staggeredDotsWave(
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
