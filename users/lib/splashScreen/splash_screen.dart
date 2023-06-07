import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:users/Assistants/assistant_methods.dart';
import 'package:users/global/global.dart';
import 'package:users/screens/login_screen.dart';
import 'package:users/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // SharedPreferences pref = await SharedPreferences.getInstance();
  // seenOnboard = pref.getBool('seenOnboard') ?? false;
  startTimer() {
    Timer(Duration(seconds: 3), () async {
      if (await firebaseAuth.currentUser != null) {
        firebaseAuth.currentUser != null
            ? AssistantMethods.readCurrentOnlineUserInfo()
            : null;
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => MainScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/splash_image.png'), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
