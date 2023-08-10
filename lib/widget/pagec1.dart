import 'package:flutter/material.dart';

class pagec extends StatelessWidget {
  pagec({
    super.key,
    this.imgpath = "",
  });

  String imgpath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.red,
          child: Image.asset(
            imgpath,
            fit: BoxFit.fill,
            height: 150,
            width: 300,
          ),
        ),
      ),
    );
  }
}
