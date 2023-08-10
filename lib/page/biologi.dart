import 'package:first_app/widget/cardmapel.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widget/sidebar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class biologi extends StatefulWidget {
  const biologi({super.key});

  @override
  State<biologi> createState() => biologiState();
}

class biologiState extends State<biologi> {
  String dropdownvalue = 'Filter 0';

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
    String username = 'Alip Slebew';

  @override
  void initState() {
    super.initState();
    fetchUsername();
  }

  Future<void> fetchUsername() async {
    final prefs = await SharedPreferences.getInstance();
    final savedUsername = prefs.getString("username");

    if (savedUsername != null) {
      setState(() {
        username = savedUsername;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      // appBar: AppBar(),
      drawer: sidebar(username: username),
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
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/tree.svg',
                            height: 36,
                            width: 36,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 1),
                                    child: Text(
                                      'Biologi',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  child: (Text('Jane Doe S.Pd.',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ))),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                    cardmapel(
                      imgPath: "assets/vector/people.svg",
                      title: "Gmeet Bahas Soal",
                      time: "24 Agustus 2023",
                      colorbox: Color(0xff646fd4),
                      desc:
                          "Pertemuan kali ini kita akan menggunakan Google meet untuk membahas dan berlatih bersama",
                    ),
                    cardmapel(
                      imgPath: "assets/vector/tugas.svg",
                      colorbox: Color(0xff646fd4),
                      title: "Tugas Halaman 23-24",
                      time: "24 Agustus 2023",
                      desc:
                          "Kerjakan soal PG di Halaman 34 s/d 35 di buku tulis! Tuliskan cara pengerjaan dengan jelas!",
                    ),
                    cardmapel(
                      imgPath: "assets/vector/ulangan.svg",
                      colorbox: Color(0xff646fd4),
                      title: "Ulangan Harian 1",
                      time: "24 Agustus 2023",
                    ),
                  ], // CONTENT CHILDREN
                ),
              ) //CONTENT CONTAINER
            ]),
      )),
      // bottomNavigationBar: navbar(),
    );
  }
}
