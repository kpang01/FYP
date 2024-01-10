import 'dart:async';

//import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

//import 'package:http/http.dart' as http;
//import 'package:rtser/Server/Myconfig.dart';
//import 'package:rtser/Server/User.dart';
import 'main-page.dart';
import 'registration-page.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<loginPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  /*Future<void> loginUser(String email, String password) async {
    final response = await http.post(
      Uri.parse(
          'http://192.168.20.183/login.php'), // Replace with your PHP file URL
      body: {
        'login': '1',
        'email': email,
        'password': password,
      },
    );

    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');

    final result = response.body;
    final parsedResult = json.decode(result);

    if (response.statusCode == 200) {
      if (parsedResult['status'] == 'success') {
      } else {
        // Login failed
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Login Failed'),
              content: Text(parsedResult['message']),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } else {
      // Login failed
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text('Failed to connect to the server'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }*/

  //Email validation regex
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
  );

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // loginpagea3P (1:913)
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/page-1/images/login-page-bg.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupvrmmGwo (NshZ8y7ApZKDgQcwwhvRmM)
                padding: EdgeInsets.fromLTRB(
                    78 * fem, 130.33 * fem, 77 * fem, 33 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupxqpqaxV (NshYUesgHUKCkVnsHQxqPq)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 32.33 * fem),
                      width: 90 * fem,
                      height: 83.33 * fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-xqpq.png',
                        width: 83.33 * fem,
                        height: 83.33 * fem,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Welcome Back!',
                        style: TextStyle(
                          fontSize: 28 * ffem,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff09328e),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupzzkqPuw (NshYbuAbyPqbNR2kbkZZKq)
                padding: EdgeInsets.fromLTRB(
                    30 * fem, 62 * fem, 30 * fem, 129 * fem),
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
                      SizedBox(height: 16.0),
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
                      SizedBox(height: 56.0),
                      Container(
                        // forgetpasswordg3o (1:940)
                        margin: EdgeInsets.fromLTRB(
                            190 * fem, 0 * fem, 0 * fem, 10 * fem),
                        child: RichText(
                          text: TextSpan(
                            text: 'Forget Password?',
                            style: TextStyle(
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff407bff),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          await onLogin();
                        },
                        child: Container(
                          // autogrouplgefaus (NshYkp5RLVfdrbBANyLGEF)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          width: double.infinity,
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
                            child: RichText(
                              text: TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogrouppcouRvV (NshYq4TLou3T7ePJTipcou)
                        margin: EdgeInsets.fromLTRB(
                            4 * fem, 0 * fem, 10 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // didnthaveaccountwdw (1:938)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 3 * fem, 0 * fem),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Didn’t have account?',
                                  style: TextStyle(
                                    fontSize: 13 * ffem,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => registrationPage()),
                                );
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: 'Click Here',
                                  style: TextStyle(
                                    fontSize: 13 * ffem,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff407bff),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

/*  void onLogin() {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Check your input")));
      return;
    }
    String email = _emailController.text;
    String password = _passwordController.text;
    print(password);
    try {
      http.post(Uri.parse("${MyConfig().SERVER}/rtser/php/login_user.php"),
          body: {
            "email": email,
            "password": password,
          }).then((response) {
        print(response.body);
        if (response.statusCode == 200) {
          var jsondata = jsonDecode(response.body);
          if (jsondata['status'] == 'success') {
            User user = User.fromJson(jsondata['data']);
            print(user.name);
            print(user.email);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Login Success"),
                duration:
                    const Duration(seconds: 2), // Optional: Set the duration
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: () {
                    // Add any action you want when the user presses the "OK" button
                  },
                ),
              ),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Login Failed'),
                  content: Text(jsondata['message']),
                  actions: [
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          }
        }
      }).timeout(const Duration(seconds: 5), onTimeout: () {
        // Time has run out, do what you wanted to do.
      });
    } on TimeoutException catch (_) {
      print("Time out");
    }
  }
}
*/

  Future<void> onLogin() async {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Check your input")));
      return;
    }

    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Successfully logged in
      print('User ID: ${userCredential.user!.uid}');
      print('Email: ${userCredential.user!.email}');

      // Fetch user data from Firebase Realtime Database
      DatabaseReference userRef = FirebaseDatabase.instance
          .reference()
          .child('users')
          .child(userCredential.user!.uid);

      userRef.once().then((DatabaseEvent event) {
        // Access DataSnapshot from the event
        DataSnapshot snapshot = event.snapshot;

        if (snapshot.value != null) {
          dynamic userData = snapshot.value;

          // Use null-aware operators to access properties safely
          String userName = userData['name'] as String? ?? 'N/A';
          String userAge = userData['age'] as String? ?? 'N/A';

          print('User Name: $userName');
          print('User Age: $userAge');
        }
      });

      // You can add further logic or navigate to a new screen here
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => mainPage()),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: const Text("Login Success"),
          duration: const Duration(seconds: 2),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print('Error message: ${e.message}');

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text(e.message ?? 'Unknown error'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}
