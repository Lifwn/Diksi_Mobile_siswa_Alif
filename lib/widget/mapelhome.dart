import 'package:flutter/material.dart';

class mapelhome extends StatelessWidget {
  mapelhome({
    super.key,
    this.colorbox,
    this.imgpath = "",
    this.title = "",
    this.teacher = "",
    this.onTap,
  });

  Color? colorbox;
  String imgpath;
  VoidCallback? onTap;
  String title;
  String teacher;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Mata Pelajaran pertama

      margin: EdgeInsets.only(left: 30, right: 30),
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
                                  Card(
                                      color: colorbox,
                                      // Color(0xffff5e48),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                          height: 43.5,
                                          width: 43.5,
                                          child: Image.asset(imgpath))),
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
