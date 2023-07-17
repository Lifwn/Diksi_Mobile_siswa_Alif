import 'package:flutter/material.dart';
import 'package:first_app/loginpage.dart';
import 'package:first_app/register.dart';
import 'package:first_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter login',
      debugShowCheckedModeBanner: false,
      home: loginpage(),
    );
  }
}
