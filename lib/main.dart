import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'homePage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    Timer(Duration(seconds: 7), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
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
                  'L O A N L Y  B A N K',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 54.0,
                    fontFamily: 'BigShoulder',
                  ),
                ),
              ],
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
