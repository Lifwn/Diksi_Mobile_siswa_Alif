import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class cardpayment extends StatelessWidget {
  cardpayment({
    super.key,
    this.colorbox,
    this.imgpath = "",
    this.title = "",
    this.teacher = "",
    this.onTap,
    this.margin,
  });

  Color? colorbox;
  EdgeInsets? margin;
  String imgpath;
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
                              child: Row(
                                children: [
                                  // Card(
                                  //     shadowColor: Colors.transparent,
                                  //     color: colorbox,
                                  //     // Color(0xffff5e48),
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(8),
                                  //     ),
                                  // child:
                                  Container(
                                      height: 38,
                                      width: 38,
                                      child: SvgPicture.asset(imgpath)),
                                  // ),
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
                                        Text(teacher)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 120),
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
