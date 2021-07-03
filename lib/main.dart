import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'homePage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'S O C I A L I S E',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 54.0,
                    fontFamily: 'BigShoulder',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'images/front.png',
              height: 300.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            // CircularProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            // ),
            SpinKitPouringHourglass(
              color: Colors.white,
              size: 70.0,
            ),
          ],
        ),
      ),
    );
  }
}
