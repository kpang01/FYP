import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Description.dart';
import 'history.dart';
import 'login-page.dart';
import 'profile.dart';
import 'record.dart';

class EmotionCategory extends StatefulWidget {
  @override
  State<EmotionCategory> createState() => _EmotionCategoryState();
}

class _EmotionCategoryState extends State<EmotionCategory> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Color(0xff06030b),
        body: Padding(
          padding: EdgeInsets.fromLTRB(17 * fem, 41 * fem, 10 * fem, 0 * fem),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 70 * fem, 0.68 * fem),
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
                                0 * fem, 0 * fem, 40 * fem, 0 * fem),
                            child: RichText(
                              text: TextSpan(
                                text: 'Emotion Category',
                                style: TextStyle(
                                  fontSize: 20 * ffem,
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
                  ],
                ),
              ),
              SizedBox(height: 20 * fem),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20 * fem,
                    mainAxisSpacing: 20 * fem,
                    childAspectRatio: 1.3,
                  ),
                  itemCount: emotionData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Description(
                              emotionName: emotionData[index]['name'],
                              emotionImage: emotionData[index]['image'],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _getEmotionColor(
                              index), // Set color based on index
                          borderRadius: BorderRadius.circular(15 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 8 * fem),
                              width: 80 * fem,
                              height: 80 * fem,
                              child: Image.asset(
                                emotionData[index]['image'],
                              ),
                            ),
                            Text(
                              emotionData[index]['name'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
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
                  break;
                case 1:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Record()));
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

  final List<Map<String, dynamic>> emotionData = [
    {'name': 'Sad', 'image': 'assets/page-1/images/sad-7fb.png'},
    {'name': 'Angry', 'image': 'assets/page-1/images/angry.png'},
    {'name': 'Calm', 'image': 'assets/page-1/images/calm.png'},
    {'name': 'Happy', 'image': 'assets/page-1/images/happy.png'},
    {'name': 'Disgust', 'image': 'assets/page-1/images/disgust-1Fs.png'},
    {'name': 'Fear', 'image': 'assets/page-1/images/fear-kE1.png'},
    {'name': 'Neutral', 'image': 'assets/page-1/images/neutral-3xZ.png'},
    {'name': 'Surprise', 'image': 'assets/page-1/images/suprise.png'},
  ];

  Color _getEmotionColor(int index) {
    switch (index) {
      case 0:
        return Color(0xffed892e); // Sad
      case 1:
        return Color(0xff75d6f5); // Angry
      case 2:
        return Color(0xff65b5ea); // Calm
      case 3:
        return Color(0xffff829b); // Happy
      case 4:
        return Color(0xffffd966); // Disgust
      case 5:
        return Color(0xffaeffac); // Fear
      case 6:
        return Color(0xff9747ff); // Neutral
      case 7:
        return Color(0xffb425cd); // Surprise
      default:
        return Colors.grey;
    }
  }
}
