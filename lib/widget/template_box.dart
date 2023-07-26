import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TemplateBox extends StatelessWidget {
  TemplateBox({
    super.key,
    this.colorBox = Colors.red,
    this.margin,
    this.imgPath = "",
    this.date = "",
    this.desc = "",
    this.time = "",
    this.title = "",
    this.teacher = "",
    required this.ontap,
  });

  Color? colorBox;
  EdgeInsets? margin;
  String imgPath;
  String title;
  String teacher;
  String date;
  String desc;
  String time;
  VoidCallback ontap;

  // String _v = "";
  // String v = "";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        //Parent container
        margin: margin,

        child: Column(
          children: [
            Card(
              //box
              color: colorBox,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                height: 132,
                width: 148,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 16),
                        child: SvgPicture.asset(
                          imgPath,
                          width: 34,
                          height: 34,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 37, left: 16),
                        child: Text(
                          title,
                          // 'Matematika'

                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Text(
                          teacher,
                          // 'Jane Doe S. pd.',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            Container(
              //deskripsi
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(color: Colors.black.withOpacity(0.25)),
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.black.withOpacity(0.25)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
