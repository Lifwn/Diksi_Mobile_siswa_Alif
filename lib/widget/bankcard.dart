import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class bankcard extends StatelessWidget {
  bankcard({
    super.key,
    this.colorbox,
    this.imgpath = "",
    this.imgpathpng = "",
    this.title = "",
    this.teacher = "",
    this.onTap,
    this.margin,
  });

  Color? colorbox;
  EdgeInsets? margin;
  String imgpath;
  String imgpathpng;
  VoidCallback? onTap;
  String title;
  String teacher;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Mata Pelajaran pertama

      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            child: InkWell(
                //Mata Pelajaran
                onTap: onTap,
                child: Card(
                  child: Container(
                      color: Colors.black.withOpacity(0.05),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Container(
                              width: 290,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 38,
                                          width: 38,
                                          child: Image.asset(imgpathpng)),
                                      Container(
                                          height: 38,
                                          // width: 38,
                                          child: SvgPicture.asset(imgpath)),
                                      Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              title,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              teacher,
                                              style: TextStyle(
                                                  color: Color(0x80000000),
                                                  fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  // ),

                                  Container(
                                    // margin: EdgeInsets.only(left: 100),
                                    child: Image.asset(
                                      'assets/Vector.png',
                                      height: 9,
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                            )
                            //Image
                          ],
                        ),
                      )),
                )),
          ),
        ],
      ),
    );
  }
}
