import 'package:first_app/page/debitkreditpay.dart';
import 'package:first_app/page/transferbank.dart';
import 'package:first_app/page/virtualaccount.dart';
import 'package:first_app/widget/cardpayment.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class carapembayaran extends StatefulWidget {
  const carapembayaran({super.key});

  @override
  State<carapembayaran> createState() => _carapembayaranState();
}

class _carapembayaranState extends State<carapembayaran> {
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
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Center(
                    child: Text(
                      "Detail Pembayaran",
                      style: TextStyle(
                          color: Color(0xFF292929),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 28, left: 24, right: 24),
                  child: Column(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //baris satu
                          children: [
                            Text(
                              "Nama Pembayaran",
                              style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "SPP Bulan Juni",
                              style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //baris satu
                          children: [
                            Text(
                              "Jumlah Bayar",
                              style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Rp 675.500,00",
                              style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //baris satu
                          children: [
                            Text(
                              "Batas Pembayaran",
                              style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "29 Juni 2022",
                              style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 67),
                  child: Center(
                    child: Text(
                      "Metode Pembayaran",
                      style: TextStyle(
                          color: Color(0xFF292929),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                cardpayment(
                    imgpath: "assets/vector/coin.svg",
                    // colorbox: Color(0xffff5e48),
                    margin: EdgeInsets.only(top: 16, right: 30, left: 30),
                    title: "Virtual Account",
                    teacher: "Bank Virtual Account",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => virtualaccount(),
                          ));
                    }),
                cardpayment(
                    imgpath: "assets/vector/bank.svg",
                    // colorbox: Color(0xffff5e48),
                    margin: EdgeInsets.only(top: 5, right: 30, left: 30),
                    title: "Transfer Bank",
                    teacher: "Transfer Tunai ke Bank Lain",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => transferbank(),
                          ));
                    }),
                cardpayment(
                    imgpath: "assets/vector/debitcard.svg",
                    // colorbox: Color(0xffff5e48),
                    margin: EdgeInsets.only(top: 5, right: 30, left: 30),
                    title: "Debit/Credit Card",
                    teacher: "Menggunakan Kartu Debit",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => debitkreditpay(),
                          ));
                    })
                // page column
              ]),
        ),
      ),
    );
  }
}
