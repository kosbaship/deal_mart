import 'dart:async';

import 'package:flutter/material.dart';

import 'on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Timer> goToNextPage() async {
    return Future.delayed(
        Duration(milliseconds: 1500),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => OnBoardingScreen(),
              ),
            ));
  }

  @override
  void initState() {
    super.initState();
    goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child: Center(child: Text('Splash_Image'))

            // Image(
            //     image: AssetImage("assets/images/splashscreen.gif"),
            //     fit: BoxFit.contain),
            ),
      ),
    );
  }
}
