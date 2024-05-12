import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rtser/page-1/loading-screen.dart';
import 'package:rtser/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(rtser());
}

class rtser extends StatefulWidget {
  @override
  State<rtser> createState() => _MyAppState();
}

class _MyAppState extends State<rtser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
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
