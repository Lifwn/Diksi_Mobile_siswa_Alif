import 'package:first_app/widget/bankcard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class transferbank extends StatefulWidget {
  const transferbank({super.key});

  @override
  State<transferbank> createState() => _transferbankState();
}

class _transferbankState extends State<transferbank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        title: Text(
          "Pembayaran",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            splashRadius: 20,
            onPressed: () => Navigator.of(context).pop(),
            icon: SvgPicture.asset("assets/vector/undo.svg")),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white.withOpacity(1),
        shadowColor: Colors.transparent,
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              //PAGE COLUMN
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 36),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Pilih Sumber Dana Anda",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xFF292929),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16),
                            child: SizedBox(
                              width: 312,
                              height: 33,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0x0D000000),
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Cari Bank',
                                    hintStyle: TextStyle(
                                        color: Color(0x80292929),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    border: OutlineInputBorder(),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 00)),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 36),
                            child: Column(
                              children: [
                                // SvgPicture.asset('assets/vector/briva.svg'),
                                bankcard(
                                    imgpathpng: "assets/briva.jpg",
                                    margin: EdgeInsets.only(
                                        top: 16, right: 30, left: 30),
                                    title: "BRIVA ",
                                    teacher: "Bank Rakyat Indonesi",
                                    onTap: () {}),
                                bankcard(
                                    imgpathpng: "assets/BNI.jpg",
                                    margin: EdgeInsets.only(
                                        top: 7, right: 30, left: 30),
                                    title: "BNI Virtual Account",
                                    teacher: "Bank Negara Indonesia",
                                    onTap: () {}),
                                bankcard(
                                    imgpathpng: "assets/Mandiri.jpg",
                                    margin: EdgeInsets.only(
                                        top: 7, right: 30, left: 30),
                                    title: "Livin' Virtual Account",
                                    teacher: "Bank Mandiri",
                                    onTap: () {}),
                                bankcard(
                                    imgpathpng: "assets/BCA.jpg",
                                    margin: EdgeInsets.only(
                                        top: 7, right: 30, left: 30),
                                    title: "BCA Virtual Account",
                                    teacher: "Bank Central Asia",
                                    onTap: () {}),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                // page column
              ]),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF5864D3),
        ),
        width: 31,
        height: 52,
        margin: EdgeInsets.fromLTRB(24, 0, 24, 60),
        child: Center(
          child: InkWell(
            onTap: () {},
            child: Text(
              "Lanjut Pembayaran",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
