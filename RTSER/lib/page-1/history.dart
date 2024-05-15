import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:rtser/page-1/main-page.dart';

import 'historyPlayAudio.dart';
import 'login-page.dart';
import 'profile.dart';
import 'record.dart';

class HistoryPage extends StatefulWidget {
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool isDone = false;
  int _currentIndex = 2;
  bool isPlaying = false;
  bool showSelectableDot = false;
  List<Map<String, dynamic>> historyData = [];

  @override
  void initState() {
    super.initState();
    fetchHistoryData();
  }

  Future<void> fetchHistoryData() async {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      DatabaseReference historyRef = FirebaseDatabase.instance
          .reference()
          .child('audio_files')
          .child(user.uid);

      try {
        DataSnapshot snapshot =
            await historyRef.once().then((event) => event.snapshot);

        if (snapshot.value != null) {
          // Extract data from snapshot
          Map<dynamic, dynamic>? data =
              snapshot.value as Map<dynamic, dynamic>?;

          // Convert map to list of maps
          List<Map<String, dynamic>> dataList = [];
          data!.forEach((key, value) {
            // Format the date
            DateTime date = DateTime.parse(value['date']);
            String formattedDate =
                "${date.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year}";

            // Convert list_emotion to List<String>
            List<String> listEmotion = [];
            if (value['list_emotion'] != null) {
              value['list_emotion'].forEach((emotion) {
                listEmotion.add(emotion);
              });
            }

            dataList.add({
              ...value,
              'fileName': key,
              'formattedDate': formattedDate, // Add formatted date
              'isSelected': false, // Initialize isSelected to false
              'list_emotion': listEmotion, // Add list_emotion field
            });
          });

          // Print the fetched data
          print("Fetched history data: $dataList");

          // Update state with history data
          setState(() {
            historyData = dataList;
          });
        }
      } catch (error) {
        // Handle any potential errors
        print("Error fetching history data: $error");
      }
    }
  }

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
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      0 * fem,
                      0 * fem,
                      0 * fem,
                      3 * fem,
                    ),
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
                              0 * fem,
                              0 * fem,
                              70 * fem,
                              0.68 * fem,
                            ),
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
                            40 * fem,
                            0 * fem,
                            70 * fem,
                            0 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: 'History',
                              style: TextStyle(
                                fontSize: 25 * ffem,
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
                              switch (value) {
                                case 1:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfilePage(),
                                    ),
                                  );
                                  break;
                                case 2:
                                  FirebaseAuth.instance.signOut();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => loginPage(),
                                    ),
                                  );
                                  break;
                              }
                            },
                            child: Icon(
                              Icons.account_circle,
                              size: 40 * fem,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              // Inside the "Done" button onTap handler:
              onTap: () async {
                if (isDone) {
                  // Get the current user
                  User? user = FirebaseAuth.instance.currentUser;

                  if (user != null) {
                    DatabaseReference historyRef = FirebaseDatabase.instance
                        .reference()
                        .child('audio_files')
                        .child(user.uid);

                    // Remove selected items from Firebase
                    for (var item in historyData) {
                      if (item['isSelected']) {
                        try {
                          await historyRef.child(item['fileName']).remove();
                        } catch (error) {
                          print("Error removing item from Firebase: $error");
                        }
                      }
                    }
                  }

                  setState(() {
                    // Remove selected items locally
                    historyData.removeWhere((item) => item['isSelected']);
                    // Reset selection
                    historyData.forEach((item) {
                      item['isSelected'] = false;
                    });
                    // Toggle "Done" state
                    isDone = !isDone;
                  });
                } else {
                  // Toggle "Done" state
                  setState(() {
                    isDone = !isDone;
                  });
                }
              },

              child: Container(
                margin: EdgeInsets.fromLTRB(
                  270 * fem,
                  20 * fem,
                  0 * fem,
                  0 * fem,
                ),
                width: 70 * fem,
                height: 30 * fem,
                child: isDone
                    ? Container(
                        decoration: BoxDecoration(
                          color: Color(0xff407bff),
                          borderRadius: BorderRadius.circular(5 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Done',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      )
                    : Icon(
                        Icons.delete,
                        size: 30 * fem,
                        color: Colors.white,
                      ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                0 * fem,
                0 * fem,
                14 * fem,
                5 * fem,
              ),
              padding: EdgeInsets.fromLTRB(
                5 * fem,
                0 * fem,
                6 * fem,
                15 * fem,
              ),
              width: double.infinity,
              height: 500 * fem,
              child: ListView.builder(
                itemCount: historyData.length,
                itemBuilder: (context, index) {
                  var item = historyData[index];

                  return Container(
                    margin: EdgeInsets.only(bottom: 10 * fem),
                    padding: EdgeInsets.fromLTRB(
                      15 * fem,
                      6 * fem,
                      7 * fem,
                      5 * fem,
                    ),
                    height: 70 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(2 * fem, 2 * fem),
                          blurRadius: 1 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15 * fem),
                          width: 42 * fem,
                          height: 42 * fem,
                          child: Text(
                            getEmojiForEmotion(item['emotion']),
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: item['fileName'],
                                  style: TextStyle(
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              SizedBox(height: 2 * fem),
                              RichText(
                                text: TextSpan(
                                  text: item['emotion'],
                                  style: TextStyle(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              SizedBox(height: 2 * fem),
                              RichText(
                                text: TextSpan(
                                  text: item['formattedDate'],
                                  style: TextStyle(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              SizedBox(height: 2 * fem),
                              RichText(
                                text: TextSpan(
                                  text: formatDuration(item['duration']),
                                  style: TextStyle(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 30 * fem, 1 * fem),
                          child: RichText(
                            text: TextSpan(
                              text: 'Score: ' + item['mark'],
                              style: TextStyle(
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                color: Color(0xb2000000),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: isDone
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      item['isSelected'] = !item['isSelected'];
                                    });
                                  },
                                  child: item['isSelected']
                                      ? Icon(
                                          Icons.radio_button_checked,
                                          size: 25 * fem,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          Icons
                                              .radio_button_unchecked, // Changed to radio button icon
                                          size: 25 * ffem,
                                          color: Color(0xff407bff),
                                        ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    // Call the method to handle the play button click and pass the filename and predictedEmotions
                                    handlePlayButtonClick(item['fileName'],
                                        item['list_emotion'] ?? []);
                                  },
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 25 * ffem,
                                    color: Color(0xff407bff),
                                  ),
                                ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.1,
            ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mainPage()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Record()),
                );
                break;
              case 2:
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
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
          elevation: 5,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 14,
          unselectedFontSize: 14,
        ),
      ),
    );
  }

  void handlePlayButtonClick(String fileName, List<String> predictedEmotions) {
    // Transfer data to the historyPlayAudio page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => historyPlayAudio(
          fileName: fileName,
          predictedEmotions: predictedEmotions,
        ),
      ),
    );
  }

  String getEmojiForEmotion(String emotion) {
    switch (emotion.toLowerCase()) {
      case 'negative':
        return '😞';

      case 'positive':
        return '😊';

      default:
        return '';
    }
  }

  String formatDuration(String durationString) {
    double seconds = double.tryParse(durationString) ?? 0.0;

    int hours = (seconds / 3600).floor();
    int minutes = ((seconds % 3600) / 60).floor();
    int remainingSeconds = (seconds % 60).round();

    String hoursString = (hours < 10) ? '0$hours' : '$hours';
    String minutesString = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsString =
        (remainingSeconds < 10) ? '0$remainingSeconds' : '$remainingSeconds';

    return '$hoursString:$minutesString:$secondsString';
  }
}
