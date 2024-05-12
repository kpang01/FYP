import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:rtser/page-1/login-page.dart';
import 'package:rtser/page-1/main-page.dart';
import 'package:rtser/utils.dart';

import 'history.dart';
import 'record.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nicknameController = TextEditingController();
  final _ageController = TextEditingController();
  final _genderController = TextEditingController();
  final _raceController = TextEditingController();
  final _emailController = TextEditingController();
  int _currentIndex = 3;

  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  final List<String> raceItems = [
    'Malay',
    'Chinese',
    'India',
    'Bumiputera',
    'Others',
  ];

  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
  );

  @override
  void initState() {
    super.initState();
    // Call a function to fetch user data from Firebase
    fetchUserData();
  }

  void fetchUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DatabaseReference userRef =
          FirebaseDatabase.instance.reference().child('users').child(user.uid);
      try {
        DataSnapshot snapshot =
            await userRef.once().then((event) => event.snapshot);
        if (snapshot.value != null) {
          Map<dynamic, dynamic>? userData =
              snapshot.value as Map<dynamic, dynamic>?;
          if (userData != null) {
            setState(() {
              _nameController.text = userData['name'] ?? '';
              _nicknameController.text = userData['nickname'] ?? '';
              _ageController.text = userData['age'] ?? '';
              _genderController.text = userData['gender'] ?? '';
              _raceController.text = userData['race'] ?? '';
              _emailController.text = userData['email'] ?? '';
            });
          } else {
            print("User data is null or not in the expected format.");
          }
        }
      } catch (error) {
        print("Error fetching user data: $error");
      }
    }
  }

  bool isEditMode = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            width: 600 * fem,
            height: 260 * fem,
            child: Stack(children: [
              Positioned(
                // ellipse7gMB (8:26)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 200 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0 * fem),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/page-1/images/Ellipse-7.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20 * fem,
                top: 30 * fem,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(); // This will navigate back
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 100 * fem, 0.68 * fem),
                    width: 21.88 * fem,
                    height: 21.32 * fem,
                    child: Icon(
                      Icons.arrow_back,
                      size: 30 * fem,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 308 * fem,
                top: 30 * fem,
                child: GestureDetector(
                  onTap: () async {
                    // Perform logout when the icon is tapped
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginPage()));
                    // Optionally, you can add navigation code to go to the login screen or any other screen after logout.
                    // Example: Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Align(
                    child: SizedBox(
                      width: 30 * fem,
                      height: 30 * fem,
                      child: Icon(
                        Icons
                            .exit_to_app, // Replace with the appropriate logout icon
                        size: 30 * fem,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 5 * fem,
                top: 100 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      12 * fem, 42 * fem, 18 * fem, 10 * fem),
                  width: 360 * fem,
                  height: 553 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // User profile image
                      CircleAvatar(
                        radius: 50 * fem,
                        backgroundImage:
                            AssetImage('assets/page-1/images/vector-dD7.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Container(
              padding:
                  EdgeInsets.fromLTRB(28 * fem, 0 * fem, 30 * fem, 74 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20 * fem),
                  topRight: Radius.circular(20 * fem),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      enabled: isEditMode,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        hintText: 'Enter Your Name',
                        prefixIcon: Icon(Icons.account_circle),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        if (value.length < 5) {
                          return 'Please provide a name at least 5 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                      controller: _nicknameController,
                      keyboardType: TextInputType.name,
                      enabled: isEditMode,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nickname',
                        hintText: 'Enter Your Nickname',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your nickname';
                        }
                        if (value.length < 2) {
                          return 'Please provide a name at least 3 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      enabled: isEditMode,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Age',
                        hintText: 'Enter Your Age',
                        prefixIcon: Icon(Icons.cake), // Icon for age
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your age';
                        }
                        // Check if the input is a valid number
                        try {
                          int age = int.parse(value);
                          if (age <= 0) {
                            return 'Age must be a positive number';
                          } else if (age >= 150) {
                            return 'Age must be a posible age for human being';
                          }
                        } catch (e) {
                          return 'Invalid age format';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      // group34t5s (1:1145)

                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: isEditMode
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                  Container(
                                    // racebky (1:1147)
                                    margin: EdgeInsets.fromLTRB(
                                        10 * fem, 0 * fem, 60 * fem, 0 * fem),
                                    child: Text(
                                      'Gender',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff727272),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: DropdownButtonFormField2<String>(
                                    isExpanded: true,
                                    value: _genderController.text.isNotEmpty
                                        ? _genderController.text
                                        : null,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 16),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      // Add more decoration..
                                    ),
                                    hint: const Text(
                                      'Select Your Gender',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    items: genderItems
                                        .map((item) => DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ))
                                        .toList(),
                                    validator: (value) {
                                      if (value == null && isEditMode) {
                                        return 'Please select gender.';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        _genderController.text =
                                            value.toString();
                                      });
                                    },
                                    onSaved: (value) {
                                      _genderController.text = value.toString();
                                    },
                                    buttonStyleData: const ButtonStyleData(
                                      padding: EdgeInsets.only(right: 8),
                                    ),
                                    iconStyleData: const IconStyleData(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black45,
                                      ),
                                      iconSize: 24,
                                    ),
                                    dropdownStyleData: DropdownStyleData(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    menuItemStyleData: const MenuItemStyleData(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                    ),
                                  )),
                                ])
                          : TextFormField(
                              controller: _genderController,
                              enabled: false, // Make it read-only
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Gender',
                                hintText: 'Select Your Gender',
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                    ),

                    SizedBox(height: 30),
                    Container(
                      // group34t5s (1:1145)

                      width: double.infinity,
                      height: 49 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: isEditMode
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // racebky (1:1147)
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 59 * fem, 0 * fem),
                                  child: Text(
                                    'Race',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff727272),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: isEditMode
                                      ? DropdownButtonFormField2<String>(
                                          isExpanded: true,
                                          value: _raceController.text.isNotEmpty
                                              ? _raceController.text
                                              : null,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            // Add more decoration..
                                          ),
                                          hint: const Text(
                                            'Select Your Race',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          items: raceItems
                                              .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          validator: (value) {
                                            if (value == null && isEditMode) {
                                              return 'Please select race.';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            if (isEditMode) {
                                              setState(() {
                                                _raceController.text =
                                                    value.toString();
                                              });
                                            }
                                          },
                                          onSaved: (value) {
                                            if (isEditMode) {
                                              _raceController.text =
                                                  value.toString();
                                            }
                                          },
                                          buttonStyleData:
                                              const ButtonStyleData(
                                            padding: EdgeInsets.only(right: 8),
                                          ),
                                          iconStyleData: const IconStyleData(
                                            icon: Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.black45,
                                            ),
                                            iconSize: 24,
                                          ),
                                          dropdownStyleData: DropdownStyleData(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          menuItemStyleData:
                                              const MenuItemStyleData(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                          ),
                                        )
                                      : TextFormField(
                                          controller: _raceController,
                                          enabled: false, // Make it read-only
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Race',
                                            hintText: 'Select Your Race',
                                            prefixIcon: Icon(Icons.flag),
                                          ),
                                        ),
                                ),
                              ],
                            )
                          : TextFormField(
                              controller: _raceController,
                              enabled: false, // Make it read-only
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Race',
                                hintText: 'Select Your Race',
                                prefixIcon: Icon(Icons.flag),
                              ),
                            ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      enabled: isEditMode,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email Address',
                        hintText: 'Enter Your Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!emailRegex.hasMatch(value)) {
                          return 'Invalid email format';
                        }
                        if (!value.endsWith('.com')) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                    // Edit button
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 20 * fem, 0 * fem, 0 * fem),
                      width: 150 * fem,
                      height: 50 * fem,
                      child: ElevatedButton(
                        onPressed: () {
                          if (isEditMode) {
                            // Save data if in edit mode
                            updateUserData();
                          }
                          setState(() {
                            isEditMode = !isEditMode;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.blue, // Adjust the color as needed
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: Text(
                          isEditMode ? 'Save' : 'Edit',
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
              ))
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Record()));
                  break;
                case 2:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryPage()));
                  break;
                case 3:
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

  void updateUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DatabaseReference userRef =
          FirebaseDatabase.instance.reference().child('users').child(user.uid);
      try {
        await userRef.update({
          'name': _nameController.text,
          'nickname': _nicknameController.text,
          'age': _ageController.text,
          'gender': _genderController.text,
          'race': _raceController.text,
          'email': _emailController.text,
        });
        print("User data updated successfully");
      } catch (error) {
        print("Error updating user data: $error");
      }
    }
  }
}
