import 'package:first_app/navbar.dart';
import 'package:first_app/widget/raporcard.dart';
import 'package:flutter/material.dart';
import 'package:first_app/sidebar.dart';
import 'package:flutter_svg/svg.dart';

class rapor extends StatefulWidget {
  const rapor({super.key});

  @override
  State<rapor> createState() => raporState();
}

class raporState extends State<rapor> {
  String dropdownvalue = 'Semua Semester';

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
                        margin: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 1),
                                child: Text(
                                  'e-Rapor',
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
                color: Color(0xfff5f5f5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //filter box
                      margin: EdgeInsets.only(left: 24, top: 10),
                      width: 190,
                      child: Card(
                        child: Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 165,
                            padding: EdgeInsets.only(left: 8),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownvalue,
                                // icon: SvgPicture.asset('assets/vector/filter.svg'),
                                items: <String>[
                                  'Semua Semester',
                                  'Tengah Semester',
                                  'Akhir Semester',
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
                      ),
                    ),
                    raporcard(
                      backgroundcolor: Color(0xff5864D3),
                      colorbox: Color(0xff5864D3),
                      imgPath: "assets/vector/note.svg",
                      title: "test",
                    )
                  ], // CONTENT CHILDREN
                ),
              ) //CONTENT CONTAINER
            ]),
      )),
      // bottomNavigationBar: navbar(),
    );
  }
}
