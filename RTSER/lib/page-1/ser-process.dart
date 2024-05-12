import 'dart:async';
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:rtser/utils.dart';

import 'Result.dart';
import 'history.dart';
import 'login-page.dart';
import 'main-page.dart';
import 'profile.dart';

class ProcessPage extends StatefulWidget {
  @override
  State<ProcessPage> createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  int _currentIndex = 1;
  String? finalEmotion = 'N/A';
  List<String> emotionList = [];
  int uploadCounter = 0;

  double currentPercentage = 0.0;

  @override
  void initState() {
    super.initState();

    getDownloadURL();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Color(0xff06030b),
        body: Padding(
          padding: EdgeInsets.fromLTRB(17 * fem, 41 * fem, 14 * fem, 35 * fem),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup5kkdf4Z (NshhNjP6YiCrzWkPGk5kKd)

                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup3yw9n9B (NshgzfBYM7Axm7FRdZ3yw9)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pop(); // This will navigate back
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 121.12 * fem, 0.68 * fem),
                              width: 21.88 * fem,
                              height: 21.32 * fem,
                              child: Icon(
                                Icons.arrow_back,
                                size: 21.88 * fem,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 95 * fem, 1 * fem),
                            child: RichText(
                              text: TextSpan(
                                text: 'SER',
                                style: TextStyle(
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: PopupMenuButton<int>(
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 1,
                                  child: ListTile(
                                    leading: Icon(Icons.person),
                                    title: Text('Profile'),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 2,
                                  child: ListTile(
                                    leading: Icon(Icons.logout),
                                    title: Text('Logout'),
                                  ),
                                ),
                              ],
                              onSelected: (value) {
                                // Handle menu item selection
                                switch (value) {
                                  case 1:
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePage()));
                                    break;
                                  case 2:
                                    FirebaseAuth.instance.signOut();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => loginPage()));
                                    break;
                                }
                              },
                              child: Icon(
                                Icons.account_circle,
                                size: 40 * fem,
                                color: Colors
                                    .white, // Customize the color if needed
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupov9zfem (NshiQ31cbSEuSTnga9ov9Z)
                      width: double.infinity,
                      height: 500 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // httpslottiefilescomanimationsp (1:1581)
                            left: 50 * fem,
                            top: 100 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 250 * fem,
                                height: 250 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/https-lottiefilescom-animations-processing-dthfbbdo2i.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // group60XBB (1:1582)
                            left: 50 * fem,
                            top: 350 * fem,
                            child: Container(
                              width: 244 * fem,
                              height: 100 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // processing3QR (1:1584)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 23 * fem),
                                    child: Text(
                                      'Processing',
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
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    // httpslottiefilescomanimationsp (1:1583)
                                    child: LoadingAnimationWidget.waveDots(
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
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
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 0.1), // Add top border
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              switch (index) {
                case 0:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mainPage()));
                  break;
                case 1:
                  break;
                case 2:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryPage()));
                  break;
                case 3:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                  break;
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mic),
                label: 'SER',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(color: Colors.blue),
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            backgroundColor: Colors.white,
            elevation: 5, // Set the elevation to control the shadow
            showSelectedLabels: true, // Show labels for selected items
            showUnselectedLabels: true, // Show labels for unselected items
            selectedFontSize: 14, // Set the font size for selected labels
            unselectedFontSize: 14, // Set the font size for unselected labels
          ),
        ));
  }

  Future<void> getDownloadURL() async {
    try {
      // Get the current user from Firebase Authentication
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        //await Future.delayed(Duration(seconds: 3));
        String userId = user.uid;
        String fileName = "user_folders/$userId/temp/temp.wav";

        // Get the download URL for the file
        String downloadURL = await firebase_storage.FirebaseStorage.instance
            .ref(fileName)
            .getDownloadURL();
        print("Download URL sent to API: $downloadURL");
        // Call _sendDownloadURLToAPI with the obtained downloadURL
        _sendDownloadURLToAPI(downloadURL);
      } else {
        print('User is not logged in.');
      }
    } catch (e) {
      print('Error fetching download URL: $e');
    }
  }

  Future<void> _sendDownloadURLToAPI(String downloadURL) async {
    String apiUrl =
        'https://pangkhongjun723-335f972d-1f6b-437e-8538-933acb3314fb.socketxp.com/predict'; // Change this to your actual API URL

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {'firebase_url': downloadURL},
      );

      print("Download URL sent to API: $downloadURL");

      if (response.statusCode == 200) {
        print("API Response: ${response.body}");

        final data = jsonDecode(response.body);

        if (data.containsKey('final_emotion') &&
            data.containsKey('percentage') &&
            data.containsKey('predicted_emotions')) {
          String finalEmotion = data['final_emotion'];
          double percentage = data['percentage'];
          List<dynamic> predictedEmotions = data['predicted_emotions'];

          setState(() {
            finalEmotion = finalEmotion;
            currentPercentage = percentage;
            emotionList = List<String>.from(predictedEmotions);
          });

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                finalEmotion: finalEmotion,
                percentage: percentage,
                predictedEmotions: emotionList,
              ),
            ),
          );
        } else {
          print('API Response does not contain expected data.');
          // Navigate back to the record page
          Navigator.pop(context);
        }
      } else {
        print(
            'Failed to send download URL to API. Status Code: ${response.statusCode}');
        // Navigate back to the record page
        Navigator.pop(context);
      }
    } catch (e) {
      print('Error sending download URL to API: $e');
      // Navigate back to the record page
      Navigator.pop(context);
    }
  }
}
