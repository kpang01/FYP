import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:rtser/page-1/category.dart';

import 'history.dart';
import 'profile.dart';
import 'record.dart';

final List<String> imgList = [
  'assets/page-1/images/Carousel-1.png',
  'assets/page-1/images/Carousel-2.png',
  'assets/page-1/images/Carousel-3.png',
];

final List<String> imgListEmotion = [
  'assets/page-1/images/sad.png',
];

class mainPage extends StatefulWidget {
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _current = 0;
  int _currentIndex = 0;
  String searchText = '';

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    final double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // mainpageXH7 (1:1298)
            padding: EdgeInsets.fromLTRB(0 * fem, 41 * fem, 0 * fem, 0 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogroupds3vRdP (Nshc3oRX2iMwMFhnDdDS3V)
                  margin: EdgeInsets.fromLTRB(
                      130.95 * fem, 0 * fem, 18 * fem, 18 * fem),
                  width: double.infinity,
                  height: 40 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame59YT7 (1:1343)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 5 * fem, 78.5 * fem, 5 * fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group58gJR (1:1344)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 9.55 * fem, 0 * fem),
                              width: 30 * fem,
                              height: 30 * fem,
                              child: Image.asset(
                                'assets/page-1/images/group-58.png',
                                width: 30 * fem,
                                height: 30 * fem,
                              ),
                            ),
                            Container(
                              // rtserbRP (1:1386)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2.5 * fem, 0 * fem, 0 * fem),

                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'RTSER',
                                  style: TextStyle(
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff97bacc),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame31HJD (1:1396)
                        width: 40 * fem,
                        height: 40 * fem,
                        child: Icon(
                          Icons.account_circle,
                          size: 38 * fem,
                          color: Colors.black, // Customize the color if needed
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // welcomebacknicknamepZ3 (1:1300)
                  margin:
                      EdgeInsets.fromLTRB(24 * fem, 0 * fem, 0 * fem, 0 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 200 * fem,
                  ),

                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'Welcome to RTSER, \nNickname.',
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // Example border styling
                    borderRadius:
                        BorderRadius.circular(8.0), // Example border radius
                  ),
                  margin: const EdgeInsets.all(25.0),
                  child: SearchAnchor(builder:
                      (BuildContext context, SearchController controller) {
                    return SearchBar(
                      controller: controller,
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0)),
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                      leading: const Icon(Icons.search),
                      hintText: 'Type your search...',
                    );
                  }, suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List<ListTile>.generate(5, (int index) {
                      final String item = 'item $index';
                      return ListTile(
                        title: Text(item),
                        onTap: () {
                          setState(() {
                            controller.closeView(item);
                          });
                        },
                      );
                    });
                  }),
                ),
                Container(
                  height: 200 * fem,
                  child: CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.4,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.grey)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // group5629K (1:1302)

                  margin:
                      EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 24 * fem),
                  width: 1065 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupxrjjYdT (NshciceBGZ43qeCpRBXRJj)

                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 10 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // emotionscategory5NV (1:1303)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 125 * fem, 0 * fem),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'Emotions Category',
                                  style: TextStyle(
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 2 * fem),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EmotionCategory()));
                                },
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'More',
                                    style: TextStyle(
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xff407bff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 400, // Set a valid width
                        height: 120.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (BuildContext context, int index) {
                              return buildEmotionCard(index);
                            }),
                      )
                    ],
                  ),
                ),
                Container(
                  // recentaWq (1:1340)
                  margin:
                      EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 7 * fem),
                  child: RichText(
                    text: TextSpan(
                      text: 'Recent',
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogroupslef6k5 (NshcCYfwptxcebxY9ksLef)
                  margin:
                      EdgeInsets.fromLTRB(19 * fem, 0 * fem, 14 * fem, 5 * fem),
                  padding:
                      EdgeInsets.fromLTRB(5 * fem, 15 * fem, 6 * fem, 15 * fem),
                  width: double.infinity,
                  height: 100 * fem,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/page-1/images/frame-19.png',
                      ),
                    ),
                  ),
                  child: Container(
                    // group63oPb (1:1387)
                    padding: EdgeInsets.fromLTRB(
                        15 * fem, 6 * fem, 7 * fem, 5 * fem),
                    width: double.infinity,
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
                          // sadHJm (1:1392)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 1 * fem),
                          width: 42 * fem,
                          height: 42 * fem,
                          child: Text(
                            '😢', // Replace this with the sad emoji you want
                            style: TextStyle(
                                fontSize: 32), // Adjust the font size as needed
                          ),
                        ),
                        Container(
                          // autogroupq21hCgd (NshcPxWbhmF8wATjdJQ21h)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 37 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'Speaker name',
                                  style: TextStyle(
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2 * fem,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Sad',
                                  style: TextStyle(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2 * fem,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '12 April 2023',
                                  style: TextStyle(
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2 * fem,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '00:12:23',
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
                          child: CircularPercentIndicator(
                            radius: 25.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.7,
                            center: new Text(
                              "70.0%",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.blueAccent,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'More',
                            style: TextStyle(
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff407bff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Record()));
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
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                ),
              ),
            ),
          ))
      .toList();

  Widget buildEmotionCard(int index) {
    List<String> emotionNames = [
      'Sad',
      'Angry',
      'Calm',
      'Happy',
      'Disgust',
      'Fear',
      'Neutral',
      'Surprise'
    ];

    List<String> emotionImages = [
      'sad.png',
      'angry.png',
      'calm-gQM.png',
      'happy-PSM.png',
      'disgust.png',
      'fear.png',
      'neutral.png',
      'suprise-GsX.png'
    ];

    List<Color> cardColors = [
      Color(0xffed892e),
      Color(0xff75d6f5),
      Color(0xff65b5ea),
      Color(0xffff829b),
      Color(0xffffd966),
      Color(0xffaeffac),
      Color(0xff9747ff),
      Color(0xffb63fcb),
    ];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      width: 120.0,
      decoration: BoxDecoration(
        color: cardColors[index], // Use different color for each emotion card
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: 120.0,
            height: 78.0,
            child: Image.asset(
              'assets/page-1/images/${emotionImages[index]}',
            ),
          ),
          Text(
            emotionNames[index],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  String getEmojiForEmotion(String emotion) {
    switch (emotion.toLowerCase()) {
      case 'sad':
        return '😢';
      case 'angry':
        return '😡';
      case 'calm':
        return '😌';
      case 'happy':
        return '😊';
      case 'disgust':
        return '🤢';
      case 'fear':
        return '😨';
      case 'neutral':
        return '😐';
      case 'surprise':
        return '😮';
      default:
        return '';
    }
  }
}
