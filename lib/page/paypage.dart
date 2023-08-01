import 'package:first_app/page/carapembayaran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class paypage extends StatefulWidget {
  const paypage({super.key});

  @override
  State<paypage> createState() => _paypageState();
}

class _paypageState extends State<paypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        flexibleSpace: Container(
          child: Row(children: [SvgPicture.asset("profile.svg")]),
          // color: Colors.white.withOpacity(0.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              //PAGE COLUMN
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // page column
                Container(
                  margin: EdgeInsets.fromLTRB(50, 20, 50, 10),
                  // HEADER CONTAINER
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          //kiri header
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Header Children
                            Container(
                              child: SvgPicture.asset(
                                  "assets/vector/Frame-greenbg.svg"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                //column text header
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SPP Bulan Mei 2022",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "G01923305ASP",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x80000000)),
                                  )
                                ],
                              ),
                            )
                          ] // Header Children
                          ),
                      InkWell(
                          onTap: () {},
                          child:
                              SvgPicture.asset("assets/vector/three-dots.svg"))
                    ],
                  ),
                ),
                Container(
                  //mid container
                  height: 375,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.symmetric(horizontal: BorderSide())),
                  child: Column(
                    //mid column
                    children: [
                      Container(
                          //teks bayar
                          padding: EdgeInsets.symmetric(vertical: 8),
                          margin: EdgeInsets.only(top: 24),
                          width: 312,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFFC81A)),
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0x40FFC81A)),
                          child: Center(
                            child: Text(
                              "Bayar Sebelum 29 Jun 2022, 17.05",
                              style: TextStyle(color: Color(0xFFFFC81A)),
                            ),
                          )),
                      Column(
                        children: [
                          Container(
                            width: 312,
                            height: 143,
                            margin:
                                EdgeInsets.only(top: 34, left: 24, right: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    // margin: EdgeInsets.only(l),
                                    color: Colors.blue,
                                    child: Image.asset(
                                      "assets/briva.jpg",
                                      width: 56,
                                      height: 18,
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  //container per 2 teks
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //children per 2 teks
                                      Container(
                                        //total bayar container
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Total Bayar",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF606060)),
                                            ),
                                            Text(
                                              "Rp 675.500,00",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                  color: Color(0xFF646FD4)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        //metode pembayaran
                                        margin: EdgeInsets.only(top: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Metode Pembayaran",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF606060)),
                                            ),
                                            Text(
                                              "BRIVA Virtual Account",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                // color: Color(0xFF646FD4)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // nomor virtual
                                        margin: EdgeInsets.only(
                                          top: 16,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Nomor Virtual Account",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF606060)),
                                            ),
                                            Text(
                                              "8078237882112",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                // color: Color(0xFF646FD4)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 101),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => carapembayaran(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/vector/info-circle.svg",
                                  // height: 22,
                                  // width: 22,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Cara Pembayaran",
                                    style: TextStyle(
                                        color: Color(0xFF646FD4),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => carapembayaran(),
                  ));
            },
            child: Text(
              "Lihat Status Pembayaran",
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
