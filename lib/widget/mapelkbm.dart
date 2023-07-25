import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class mapelkbm extends StatelessWidget {
  mapelkbm({
    super.key,
    this.colorbox,
    this.imgPath = "",
    this.title = "",
    this.teacher = "",
    this.desc = "",
    this.onTap,
  });
  Color? colorbox;
  String imgPath;
  String title;
  String teacher;
  String desc;
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
                            Card(
                                color: colorbox,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                    height: 43.5,
                                    width: 43.5,
                                    child: SvgPicture.asset(imgPath))),
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
                        child: Text(
                          desc,
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
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
