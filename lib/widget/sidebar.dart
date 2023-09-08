import 'package:first_app/page/jadwalkbm.dart';
import 'package:first_app/page/loginpage.dart';
import 'package:first_app/page/ujian.dart';
import 'package:first_app/widget/bottomnavbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sidebar extends StatelessWidget {
  final String username;

  const sidebar({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(0xfff5f5f5),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.all(16),
                    child: CircleAvatar(
                      child: ClipOval(
                          child: Image.asset(
                        'assets/profile.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.fill,
                      )),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 16, left: 16),
                  child: Text(
                    username, // Use the username parameter here
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: Divider(
                    thickness: 1,
                    color: Color(0xffB8B8B8),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => bottomnavbar()),
                    );
                  },
                  child: Container(
                    child: Row(children: [
                      Container(
                          margin: EdgeInsets.all(16),
                          child: SvgPicture.asset(
                              'assets/vector/black-element.svg')),
                      Container(
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                              color: Color(0xff292929),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      )
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => jadwalkbm()),
                    );
                  },
                  child: Container(
                    child: Row(children: [
                      Container(
                          margin: EdgeInsets.all(16),
                          child:
                              SvgPicture.asset('assets/vector/stickynote.svg')),
                      Container(
                        child: Text(
                          'Jadwal KBM',
                          style: TextStyle(
                              color: Color(0xff292929),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      )
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(children: [
                      Container(
                          margin: EdgeInsets.all(16),
                          child: SvgPicture.asset('assets/vector/book.svg')),
                      Container(
                        child: Text(
                          'Mata Pelajaran',
                          style: TextStyle(
                              color: Color(0xff292929),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      )
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(children: [
                      Container(
                          margin: EdgeInsets.all(16),
                          child: SvgPicture.asset(
                              'assets/vector/book-square.svg')),
                      Container(
                        child: Text(
                          'Tugas',
                          style: TextStyle(
                              color: Color(0xff292929),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      )
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ujian()),
                    );
                  },
                  child: Container(
                    child: Row(children: [
                      Container(
                          margin: EdgeInsets.all(16),
                          child: SvgPicture.asset(
                              'assets/vector/document-text.svg')),
                      Container(
                        child: Text(
                          'Ujian',
                          style: TextStyle(
                              color: Color(0xff292929),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      )
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove("isLoggedIn"); // Hapus status login

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => loginpage()),
                    );
                  },
                  child: Container(
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 200, 16, 200),
                        child: Icon(Icons.logout),
                      ),
                      Container(
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            color: Color(0xff292929),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
