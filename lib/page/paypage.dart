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
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: CircleAvatar(
        //         backgroundImage: AssetImage('assets/profile.png'),
        //         radius: 15,
        //       ))
        // ],
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
                      Container(
                        margin: EdgeInsets.only(top: 34),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/briva.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
