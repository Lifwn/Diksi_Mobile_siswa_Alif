import 'package:first_app/jadwalkbm.dart';
import 'package:first_app/ujian.dart';
import 'package:flutter/material.dart';
import 'package:first_app/homepage.dart';
import 'package:flutter_svg/svg.dart';

class sidebar extends StatelessWidget {
  const sidebar({super.key});

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
                    'John Doe',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()),
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
              ],
            )
          ],
        ));
  }
}
