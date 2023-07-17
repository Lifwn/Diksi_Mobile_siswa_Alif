import 'package:flutter/material.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('test'),
      ),
    );
  }
}
