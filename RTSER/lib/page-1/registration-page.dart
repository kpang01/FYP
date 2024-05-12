import 'dart:typed_data';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:rtser/utils.dart';

class registrationPage extends StatefulWidget {
  @override
  State<registrationPage> createState() => _registrationPageState();
}

class _registrationPageState extends State<registrationPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nicknameController = TextEditingController();
  final _ageController = TextEditingController();
  final _genderController = TextEditingController();
  final _raceController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/page-1/images/registration-page-bg.png',
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(
                      12 * fem, 44 * fem, 12 * fem, 27 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle back navigation here
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-1/images/Group 32.png',
                            width: 35 * fem,
                            height: 35 * fem,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            8 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: RichText(
                          text: TextSpan(
                            text: 'Create Account',
                            style: TextStyle(
                              fontSize: 28 * ffem,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff09328e),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      28 * fem, 27 * fem, 30 * fem, 74 * fem),
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
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 0 * fem, 26 * fem),
                          width: double.infinity,
                          height: 50 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // racebky (1:1147)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 59 * fem, 0 * fem),
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
                                  decoration: InputDecoration(
                                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                                    // the menu padding when button's width is not specified.
                                    contentPadding: const EdgeInsets.symmetric(
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
                                    if (value == null) {
                                      return 'Please select gender.    ';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _genderController.text = value.toString();
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
                                ),
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                        Container(
                          // group34t5s (1:1145)
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 0 * fem, 26 * fem),
                          width: double.infinity,
                          height: 49 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // racebky (1:1147)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 59 * fem, 0 * fem),
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
                                child: DropdownButtonFormField2<String>(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                                    // the menu padding when button's width is not specified.
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    // Add more decoration..
                                  ),
                                  hint: const Text(
                                    'Select Your Race',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  items: raceItems
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
                                    if (value == null) {
                                      return 'Please select race.';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _raceController.text = value.toString();
                                    });
                                  },
                                  onSaved: (value) {
                                    _raceController.text = value.toString();
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
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
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
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                            prefixIcon:
                                Icon(Icons.lock), // Locker icon at the front
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              child: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ), // Visibility toggle icon at the end
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }
                            if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$')
                                .hasMatch(value)) {
                              return 'Password must contain at least one letter and one number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !_confirmPasswordVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirm Password',
                            hintText: 'Re-enter Your Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _confirmPasswordVisible =
                                      !_confirmPasswordVisible;
                                });
                              },
                              child: Icon(
                                _confirmPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please confirm your password';
                            }
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () async {
                            createUser();
                          },
                          child: Container(
                            // autogroupyhekR57 (NshaKGUhWqnzCwkUwsyheK)
                            margin: EdgeInsets.fromLTRB(
                                2 * fem, 0 * fem, 0 * fem, 6 * fem),
                            width: 300 * fem,
                            height: 50 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff407bff),
                              borderRadius: BorderRadius.circular(10 * fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0 * fem, 4 * fem),
                                  blurRadius: 2 * fem,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Sign up',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupxqkxG5j (NshaQvyvp3dQZ22fisxqkX)
                          margin: EdgeInsets.fromLTRB(
                              2 * fem, 0 * fem, 111 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // alreadyhaveaccountb81 (1:1138)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                child: Text(
                                  'Already have account?',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 13 * ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Text(
                                // loginJYD (1:1137)
                                'Login',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff407bff),
                                ),
                              ),
                            ],
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
    );
  }

  Future<void> createStorageFolder(String userId) async {
    try {
      // Get a reference to the storage bucket
      final Reference storageRef = FirebaseStorage.instance.ref();

      // Create a folder with the user's ID as the folder name
      final Reference userFolderRef = storageRef.child('user_folders/$userId/');

      // Create 'temp' folder inside user folder
      final Reference tempFolderRef = userFolderRef.child('temp/');
      await tempFolderRef.putData(Uint8List(0)); // Create temp folder

      // Create 'audio' folder inside user folder
      final Reference audioFolderRef = userFolderRef.child('audio/');
      await audioFolderRef.putData(Uint8List(0)); // Create audio folder

      print('Folders created successfully: $userId');
    } catch (e) {
      print('Error creating folders: $e');
    }
  }

  void createUser() async {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Check your input")),
      );
      return;
    }

    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Check your password")),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (dialogContex) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          title: const Text("Register new account?", style: TextStyle()),
          content: const Text("Are you sure?", style: TextStyle()),
          actions: <Widget>[
            TextButton(
              child: const Text("Yes", style: TextStyle()),
              onPressed: () async {
                Navigator.of(context).pop();
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );

                  if (userCredential.user != null) {
                    // Store additional user data in Firebase Realtime Database
                    storeUserData(userCredential.user!.uid);
                    createStorageFolder(userCredential.user!.uid);

                    // Check if email verification is enabled
                    if (!userCredential.user!.emailVerified) {
                      // Send email verification
                      await userCredential.user!.sendEmailVerification();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Verification email sent")),
                      );
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Registration Success")),
                    );

                    // Navigate back to login page
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Registration Failed")),
                    );
                  }
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Registration Failed")),
                  );
                } catch (e) {
                  print(e);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Registration Failed")),
                  );
                }
              },
            ),
            TextButton(
              child: const Text("No", style: TextStyle()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void storeUserData(String userId) {
    DatabaseReference userRef =
        FirebaseDatabase.instance.ref('users').child(userId);

    // Create a map of user data to be stored in the database
    Map<String, dynamic> userData = {
      'name': _nameController.text,
      'nickname': _nicknameController.text,
      'age': _ageController.text,
      'gender': _genderController.text,
      'race': _raceController.text,
      'email': _emailController.text,
    };

    // Set the user data in the database
    userRef.set(userData);
    try {
      userRef.set(userData);
      print('Data uploaded successfully');
    } catch (e) {
      print('Error uploading data: $e');
    }
  }
}
