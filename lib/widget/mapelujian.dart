import 'package:first_app/widget/link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class mapelujian extends StatelessWidget {
  mapelujian({
    super.key,
    this.colorbox,
    this.imgPath = "",
    this.title = "",
    this.teacher = "",
    this.point1 = "",
    this.point2 = "",
    this.point3 = "",
    this.time = "",
    this.onTap,
  });
  Color? colorbox;
  String imgPath;
  String title;
  String teacher;
  String point1;
  String point2;
  String point3;
  String time;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: InkWell(
          //Mata Pelajaran
          onTap: onTap,
          child: Card(
            child: Container(
                color: Colors.black.withOpacity(0.05),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    color: colorbox,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                        height: 43.5,
                                        width: 43.5,
                                        child: SvgPicture.asset(imgPath))),
                                Text(
                                  time,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff646FD4)),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    teacher,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.5)),
                                  )
                                ],
                              ),
                            ),
                          ]),
                      Divider(
                        color: Colors.black,
                      ),
                      // Call List String #######################
                      Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Materi :",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(point1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.75))),
                              Text(point2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.75))),
                              Text(point3,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.75)))
                            ],
                          )),
                      // Text(
                      //   '- Tugas Essay',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ],
                  ),
                )),
          )),
    );
  }
}
