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
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: signupPurpleGradient),
          ),
          Positioned(
            top: 35,
            left: 87,
            child: Image.asset(
              "assets/images/person_on_rocket.png",
              scale: 1.5,
            ),
          ),
          Positioned(
            top: 230,
            left: 62,
            child: Column(
              children: [
                Text(
                  "Hi there!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Let's Get Started",
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
                          cursorColor: signupDarkPurple,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
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
                          cursorColor: signupDarkPurple,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    color: signupDarkPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Create an Account",
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
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.white30,
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: loginPurpleGradient),
          ),
          Positioned(
            top: 35,
            left: 87,
            child: Image.asset(
              "assets/images/person_&_dog.png",
              scale: 1.5,
            ),
          ),
          Positioned(
            top: 230,
            left: 62,
            child: Column(
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "Please, Log In",
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
                          cursorColor: signupDarkPurple,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "pola.anurag@gmail.com",
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
                          cursorColor: signupDarkPurple,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "**************",
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
                    color: loginDarkPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Continue >",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.white30,
                  ),
                  child: Center(
                    child: Text(
                      "Create an Account",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
