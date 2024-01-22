import 'package:flutter/material.dart';

import 'history.dart';
import 'main-page.dart';
import 'profile.dart';
import 'record.dart';

class ResultPage extends StatefulWidget {
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Color(0xff06030b),
        body: Padding(
            padding:
                EdgeInsets.fromLTRB(17 * fem, 41 * fem, 14 * fem, 35 * fem),
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
                                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem,
                                      121.12 * fem, 0.68 * fem),
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
                                    0 * fem, 0 * fem, 90 * fem, 1 * fem),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Result',
                                    style: TextStyle(
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame31HJD (1:1396)
                                width: 40 * fem,
                                height: 40 * fem,
                                child: Icon(
                                  Icons.account_circle,
                                  size: 40 * fem,
                                  color: Colors
                                      .white, // Customize the color if needed
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // emotionrecognizedhru (1:1618)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 45 * fem, 2 * fem, 20 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 198 * fem,
                          ),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Emotion \nRecognized!',
                              style: TextStyle(
                                fontSize: 30 * ffem,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // surprisebxH (1:1620)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 20 * fem),
                          width: 200 * fem,
                          height: 200 * fem,
                          child: Center(
                            child: Text(
                              '😲', // Surprise emoji character
                              style: TextStyle(
                                fontSize:
                                    130 * fem, // Adjust the font size as needed
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group798hK (1:1621)
                          margin: EdgeInsets.fromLTRB(
                              101 * fem, 0 * fem, 101 * fem, 76 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // surprisefSM (1:1622)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'SURPRISE',
                                    style: TextStyle(
                                      fontSize: 25 * ffem,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xff30e8ff),
                                    ),
                                  ),
                                ),
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: '89.00 %',
                                  style: TextStyle(
                                    fontSize: 22 * ffem,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff30e8ff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group627p9 (1:1624)
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          height: 50 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 42 * fem, 0 * fem),
                                width: 120 * fem,
                                height: 50 * fem,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your process button functionality here
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => mainPage()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .blue, // Adjust the color as needed
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Save',
                                    style: TextStyle(
                                      fontSize: 20 * fem,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 120 * fem,
                                height: 50 * fem,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your process button functionality here
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Record()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .blue, // Adjust the color as needed
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Try again',
                                    style: TextStyle(
                                      fontSize: 20 * fem,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
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
                ])),
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
}
