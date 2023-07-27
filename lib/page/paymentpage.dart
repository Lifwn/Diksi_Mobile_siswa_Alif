import 'package:first_app/widget/cardmapel.dart';
import 'package:first_app/widget/paymentcard.dart';
import 'package:first_app/widget/paymentcard2.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widget/sidebar.dart';
import 'package:flutter_svg/svg.dart';

class paymentpage extends StatefulWidget {
  const paymentpage({super.key});

  @override
  State<paymentpage> createState() => paymentpageState();
}

class paymentpageState extends State<paymentpage> {
  String dropdownvalue = 'Filter 0';

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      // appBar: AppBar(),
      drawer: sidebar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        child: Column(

            //main column
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //main children
              SizedBox(
                height: 38,
                child: Container(
                    // color: Colors.amber,
                    ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: IconButton(
                          splashRadius: 24,
                          icon: Icon(Icons.menu),
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            _globalKey.currentState?.openDrawer();
                          }),
                    ),
                    Container(
                        child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                      radius: 15,
                    ))
                  ],
                ),
              ),
              Container(
                //container judul
                margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Column(
                    //column judul
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 1),
                                child: Text(
                                  'Pembayaran',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 12),
                          child: SizedBox(
                            width: 400,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Cari Fitur, Nilai, Mapel, dll.',
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10)),
                            ),
                          ))
                    ]),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                //CONTENT CONTAINER
                margin: EdgeInsets.only(
                  top: 25,
                ),
                color: Colors.grey.withOpacity(0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //filter box
                      margin: EdgeInsets.only(left: 24, top: 10),
                      width: 148,
                      child: Card(
                          child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child:
                                  SvgPicture.asset('assets/vector/filter.svg')),
                          Container(
                              width: 115,
                              padding: EdgeInsets.only(left: 8),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownvalue,
                                  // icon: SvgPicture.asset('assets/vector/filter.svg'),
                                  items: <String>[
                                    'Filter 0',
                                    'Filter 1',
                                    'Filter 2',
                                    'Filter 3',
                                    'Filter 4',
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              )),
                        ],
                      )),
                    ),
                    paymentcard(
                      imgPath: "assets/vector/Frame-white.svg",
                      colorbox: Color(0xFF698916),
                      backgroundcolor: Color(0xFF698916),
                      title: "SPP Bulan Juli",
                      titlecolor: Colors.white,
                      teacher: "G01923305ASP",
                      yearcolor: Color(0x80FFFFFF),
                      buttoncolor: Colors.white,
                      paymenttextcolor: Color(0xFF698916),
                      onTap: () {},
                    ),
                    paymentcard2(
                      imgPath: "assets/vector/Frame-greenbg.svg",
                      colorbox: Color(0xFFCBE091),
                      backgroundcolor: Color(0x0D000000),
                      title: "SPP Bulan Mei 2022",
                      titlecolor: Colors.black,
                      teacher: "G01923305ASP",
                      yearcolor: Color(0x80000000),
                    ),
                    paymentcard(
                      imgPath: "assets/vector/Frame-white.svg",
                      colorbox: Color(0xFF698916),
                      backgroundcolor: Color(0xFF698916),
                      title: "SPP Bulan Juli",
                      titlecolor: Colors.white,
                      teacher: "G01923305ASP",
                      yearcolor: Color(0x80FFFFFF),
                      buttoncolor: Colors.white,
                      paymenttextcolor: Color(0xFF698916),
                      onTap: () {},
                    ),
                  ], // CONTENT CHILDREN
                ),
              ) //CONTENT CONTAINER
            ]),
      )),
      // bottomNavigationBar: bottomnavbar(),
      // bottomNavigationBar: navbar(),
    );
  }
}
