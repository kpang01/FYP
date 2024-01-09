import 'package:flutter/material.dart';
import 'package:rtser/page-1/loading-screen.dart';
import 'package:rtser/utils.dart';
//import 'package:myapp/page-1/profile.dart';
//import 'package:myapp/page-1/history-delete.dart';
//import 'package:myapp/page-1/result-surprise.dart';
//import 'package:myapp/page-1/ser-process.dart';
//import 'package:myapp/page-1/ser.dart';
//import 'package:myapp/page-1/history.dart';
//import 'package:myapp/page-1/category.dart';
//import 'package:myapp/page-1/main-page.dart';
//import 'package:myapp/page-1/registration-page.dart';
//import 'package:myapp/page-1/login-page.dart';
//import 'package:myapp/page-1/onboarding-page-MU9.dart';
//import 'package:myapp/page-1/onboarding-page.dart';
//import 'package:myapp/page-1/oboarding-page.dart';

void main() => runApp(rtser());

class rtser extends StatefulWidget {
  @override
  State<rtser> createState() => _MyAppState();
}

class _MyAppState extends State<rtser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: LoadingScreen(),
        ),
      ),
    );
  }
}
