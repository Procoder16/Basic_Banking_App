import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B1328),
        title: Text('Home Page'),
      ),
      body: Container(
        child: Center(
          child: Text('Home Page Content'),
        ),
      ),
    );
  }
}
