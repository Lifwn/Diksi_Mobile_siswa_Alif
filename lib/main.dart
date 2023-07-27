import 'package:flutter/material.dart';

import 'package:first_app/page/loginpage.dart';

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
