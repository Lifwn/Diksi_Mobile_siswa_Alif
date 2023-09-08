import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: 328,
        height: 218,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 26,
            ),
            SvgPicture.asset(
              "assets/vector/check.svg",
              width: 36,
              height: 36,
            ),
            // Placeholder for the vector or image

            SizedBox(height: 10),

            Text(
              'Pembayaran Sudah di',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Konfirmasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 20),
            Container(
              width: 296,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF646FD4)),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 0.96,
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Column(children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                    child: SvgPicture.asset(
                                        "assets/vector/check.svg")),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Invoice Pembayaran",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Nama Transfer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff292D32)),
                                      ),
                                      Text(
                                        "SPP Bulanan",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff292D32)),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Tanggal",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff292D32)),
                                      ),
                                      Text(
                                        "12 Jul 2022 | 14:23:12 WIB",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Color(0xff292D32)),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Metode",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xff292D32)),
                                      ),
                                      Text(
                                        "BRIVA",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        );
                      });
                },

                // width: 296,
                child: Center(child: Text('Lihat Invoice')),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
