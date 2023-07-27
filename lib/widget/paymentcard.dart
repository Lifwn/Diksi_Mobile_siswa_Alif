import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class paymentcard extends StatelessWidget {
  paymentcard({
    super.key,
    this.backgroundcolor,
    this.colorbox,
    this.titlecolor,
    this.yearcolor,
    this.buttoncolor,
    this.paymenttextcolor,
    this.imgPath = "",
    this.title = "",
    this.teacher = "",
    this.download = "",
    this.onTap,
  });
  Color? backgroundcolor;
  Color? colorbox;
  Color? buttoncolor;
  Color? titlecolor;
  Color? yearcolor;
  Color? paymenttextcolor;
  String imgPath;
  String title;
  String teacher;
  String download;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 24, right: 24),
      child: Card(
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
            // margin: EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: backgroundcolor),
            // color: Colors.black.withOpacity(0.50),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 12, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      // bagian kiri card
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                            shadowColor: Colors.transparent,
                            color: colorbox,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                                height: 43.5,
                                width: 43.5,
                                child: SvgPicture.asset(imgPath))),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: titlecolor,
                                ),
                              ),
                              Text(
                                teacher,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: yearcolor),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: buttoncolor),
                                    onPressed: onTap,
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        "Lakukan Pembayaran",
                                        style:
                                            TextStyle(color: paymenttextcolor),
                                      )),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ]),

                  // Divider(
                  //   color: Colors.black.withOpacity(0),
                  // ),
                ],
              ),
            )),
      ),
    );
  }
}
