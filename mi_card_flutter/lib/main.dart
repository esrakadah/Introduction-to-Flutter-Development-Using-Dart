import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.all(20),
            height: 100,
            width: 100,
            color: Colors.white,
            child: Text("hello"),
          ),
        ),
      ),
    );
  }
}
