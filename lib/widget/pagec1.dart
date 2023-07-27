import 'package:flutter/material.dart';

class pagec1 extends StatelessWidget {
  const pagec1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.red,
          child: Image.asset(
            "assets/mading.png",
            fit: BoxFit.fill,
            height: 150,
            width: 300,
          ),
        ),
      ),
    );

    // ClipRRect(
    //   child: Container(
    //     child: Image.asset(
    //       'assets/mading.png',
    //       // fit: BoxFit.cover,
    //     ),
    //   ),

    // borderRadius: BorderRadius.circular(80),
    // child: Image.asset(
    //   'assets/mading.png',
    // ),)
  }
}
