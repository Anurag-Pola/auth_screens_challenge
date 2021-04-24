import 'dart:ui';

import 'package:flutter/material.dart';

final signupPurpleGradient = LinearGradient(colors: [
  Color.fromRGBO(145, 131, 222, 1),
  Color.fromRGBO(160, 148, 227, 1),
]);
final signupDarkPurple = Color.fromRGBO(82, 67, 154, 1);

final loginPurpleGradient = LinearGradient(colors: [
  Color.fromRGBO(229, 178, 202, 1),
  Color.fromRGBO(205, 130, 222, 1),
]);
final loginDarkPurple = Color.fromRGBO(120, 37, 139, 1);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen Challenge',
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
      routes: {
        'SignUpScreen': (context) => SignUpScreen(),
        'LoginScreen': (context) => LoginScreen(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      "assets/images/person_on_rocket.png",
      signupPurpleGradient,
      "Hi there!",
      "Let's Get Started",
      "Create an Account",
      "Login",
      signupDarkPurple,
      'LoginScreen',
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      "assets/images/person_&_dog.png",
      loginPurpleGradient,
      "Welcome Back!",
      "Please, Log In",
      "Continue >",
      "Create an Account",
      loginDarkPurple,
      'SignUpScreen',
    );
  }
}

class Screen extends StatelessWidget {
  Screen(
    this.image,
    this.gradient,
    this.title,
    this.subtitle,
    this.firstbuttontext,
    this.secondbuttontext,
    this.buttoncolor,
    this.screenstring,
  );

  final String image;
  final Gradient gradient;
  final String title;
  final String subtitle;
  final String firstbuttontext;
  final String secondbuttontext;
  final Color buttoncolor;
  final String screenstring;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: gradient),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 20,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: Image.asset(
              image,
              scale: 1.5,
            ),
          ),
          Positioned(
            top: 230,
            left: MediaQuery.of(context).size.width / 2 - 120,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Image.asset(
                          "assets/icons/user.png",
                          scale: 1.3,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: buttoncolor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Image.asset(
                          "assets/icons/key.png",
                          scale: 1.3,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          cursorColor: buttoncolor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: buttoncolor,
                  ),
                  child: Center(
                    child: Text(
                      firstbuttontext,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "---------------------------  or  ---------------------------",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, screenstring);
                  },
                  child: Container(
                    height: 50,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.white30,
                    ),
                    child: Center(
                      child: Text(
                        secondbuttontext,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
