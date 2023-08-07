import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class debitkreditpay extends StatefulWidget {
  const debitkreditpay({super.key});

  @override
  State<debitkreditpay> createState() => _debitkreditpayState();
}

class _debitkreditpayState extends State<debitkreditpay> {
  bool _isChecked = false;
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
                          builder: (BuildContext context) {
                            return Scaffold(
                              backgroundColor: Colors.blue,
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
      },
    );
  }

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
                    width: 312,
                    //nama pengguna kartu
                    margin: EdgeInsets.only(top: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama Pengguna Kartu"),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: TextField(
                              decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0x0D000000),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Nama",
                            hintStyle: TextStyle(
                                color: Color(0x80000000),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 9, vertical: 16),
                          )),
                        ),
                        Container(
                          // second line textfield
                          margin: EdgeInsets.only(top: 36),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Expiration Date"),
                                    Container(
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                          decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0x0D000000),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        hintText: "05/2028",
                                        hintStyle: TextStyle(
                                            color: Color(0x80000000),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 9, vertical: 16),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("CVC"),
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: TextField(
                                        decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0x0D000000),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      hintText: "737",
                                      hintStyle: TextStyle(
                                          color: Color(0x80000000),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 9, vertical: 16),
                                    )),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 36),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nomor Kartu"),
                              TextField(
                                  decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0x0D000000),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "**** **** **** ****",
                                hintStyle: TextStyle(
                                    color: Color(0x80000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9, vertical: 16),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isChecked,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked = newValue!;
                                  });
                                },
                              ),
                              Text(
                                "Simpan Kartu",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xFF7D7D7D)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]), //PAGECOLUMN
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
        child: InkWell(
          onTap: () {
            _showAlertDialog(context);
          },
          child: Center(
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
