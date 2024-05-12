import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'history.dart';
import 'login-page.dart';
import 'profile.dart';
import 'record.dart';

class Description extends StatefulWidget {
  final String emotionName;
  final String emotionImage;

  Description({required this.emotionName, required this.emotionImage});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Color(0xff06030b),
        body: Padding(
            padding: EdgeInsets.fromLTRB(17 * fem, 41 * fem, 0 * fem, 0 * fem),
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
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 10 * fem, 0 * fem),
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
                                              builder: (context) =>
                                                  loginPage()));
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
                        // angryBbb (1:1428)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 400 * fem,
                        height: 300 * fem,

                        child: Image.asset(
                          widget.emotionImage,
                        ),
                      ),
                      Container(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: widget.emotionName,
                            style: TextStyle(
                              fontSize: 30 * ffem,
                              fontWeight: FontWeight.w800,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 20 * fem, 225 * fem, 0 * fem),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            text: 'Description',
                            style: TextStyle(
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 10 * fem, 30 * fem, 0 * fem),
                        child: Text(
                          _getEmotionDescription(widget.emotionName),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
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

  String _getEmotionDescription(String name) {
    switch (name) {
      case 'Sad':
        return '"Sad" is an emotional state characterized by feelings of sorrow, melancholy, or grief. When someone is sad, they may experience tears, low energy levels, and a lack of interest in activities they once enjoyed.';
      case 'Angry':
        return '"Angry" is an emotional state characterized by strong feelings of displeasure, irritation, or hostility. When someone is angry, they may experience heightened physiological responses such as increased heart rate, tense muscles, and changes in facial expressions.';
      case 'Calm':
        return '"Calm" is an emotional state characterized by peace, tranquility, and relaxation. When someone is calm, they may feel centered, composed, and free from stress or agitation.';
      case 'Happy':
        return '"Happy" is an emotional state characterized by feelings of joy, contentment, and satisfaction. When someone is happy, they may experience positive emotions, laughter, and a sense of well-being.';
      case 'Disgust':
        return '"Disgust" is an emotional state characterized by revulsion, repugnance, or aversion towards something unpleasant or offensive. When someone is disgusted, they may experience nausea, grimacing, or avoidance behavior.';
      case 'Fear':
        return '"Fear" is an emotional state characterized by feelings of apprehension, anxiety, or dread in response to perceived threats or danger. When someone is afraid, they may experience physiological reactions such as increased heart rate, sweating, and trembling.';
      case 'Neutral':
        return '"Neutral" is an emotional state characterized by a lack of strong positive or negative feelings. When someone is neutral, they may feel indifferent, disinterested, or emotionally detached from their surroundings.';
      case 'Surprise':
        return '"Surprise" is an emotional state characterized by sudden and unexpected reactions to stimuli. When someone is surprised, they may exhibit facial expressions such as widened eyes, raised eyebrows, and an open mouth.';
      default:
        return 'No description available';
    }
  }
}
