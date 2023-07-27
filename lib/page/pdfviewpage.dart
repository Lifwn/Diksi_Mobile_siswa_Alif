import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class pdfviewpage extends StatelessWidget {
  const pdfviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  radius: 15,
                ))
          ],
          title: Text(
            "PDF Viewer",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
              splashRadius: 20,
              onPressed: () => Navigator.of(context).pop(),
              icon: SvgPicture.asset("assets/vector/undo.svg")),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white.withOpacity(1),
          shadowColor: Colors.transparent,
          toolbarHeight: 50,
          flexibleSpace: Container(
            child: Row(children: [SvgPicture.asset("profile.svg")]),
            // color: Colors.white.withOpacity(0.5),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(),
        ),
        bottomNavigationBar: Container(
          width: 1880,
          height: 46,
          margin: EdgeInsets.only(bottom: 80),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF5864D3),
            ),
            margin: EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/vector/minus.svg"),
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/vector/add.svg"),
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/vector/export.svg"),
                )
              ],
            ),
          ),
        ));
  }
}
