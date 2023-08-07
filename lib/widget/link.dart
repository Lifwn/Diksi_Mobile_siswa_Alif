import 'package:flutter/material.dart';

class link extends StatelessWidget {
  link({
    super.key,
    this.text = "",
    this.route,
  });

  String text;
  VoidCallback? route;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //Jadwal hari Ini - selengkapnya
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: route,
            child: Text(
              'Selengkapnya >',
              style: TextStyle(fontSize: 14, color: Color(0xff5864D3)),
            ))
      ] //Jadwal Hari Ini - selengkapnya children
          ),
    );
  }
}
