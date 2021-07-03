import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'Hey there!!!',
                    style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BigShoulder',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
