import 'package:first_app/widget/mapelkbm.dart';
import 'package:flutter/material.dart';
import 'package:first_app/navbar.dart';
import 'package:first_app/sidebar.dart';
import 'package:first_app/pagec1.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class jadwalkbm extends StatefulWidget {
  const jadwalkbm({super.key});

  @override
  State<jadwalkbm> createState() => jadwalkbmState();
}

class jadwalkbmState extends State<jadwalkbm> {
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
                        margin: EdgeInsets.only(top: 10),
                        child: (Text('Selamat Pagi,',
                            style: TextStyle(
                              fontSize: 14,
                            ))),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 1),
                          child: Text(
                            'Jadwal KBM',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )),
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
                //CONTENT CONTAINER
                margin: EdgeInsets.only(top: 25),
                color: Color(0xfff5f5f5),
                child: Column(
                  children: [
                    chiphari(),

                    //CONTENT CHILDREN
                  ], // CONTENT CHILDREN
                ),
              ) //CONTENT CONTAINER
            ]),
      )),
      bottomNavigationBar: navbar(),
    );
  }
}

class chiphari extends StatefulWidget {
  @override
  _chiphariState createState() => _chiphariState();
}

class _chiphariState extends State<chiphari> {
  String selectedDay = "Senin";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Wrap(
          spacing: 8.0,
          children: _buildChoiceChips(),
        ),
        SizedBox(height: 20),
        _buildSelectedContent(),
      ],
    );
  }

  List<Widget> _buildChoiceChips() {
    return ["Senin", "Selasa", "Rabu", "Kamis", "Jumat"].map((day) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: ChoiceChip(
          label: Text(
            day,
            style: TextStyle(
                color: selectedDay == day ? Colors.white : Color(0xff5864D3),
                fontWeight: FontWeight.w400),
          ),
          selected: selectedDay == day,
          backgroundColor: Colors.white,
          selectedColor: Color(0xff5864D3),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color:
                    selectedDay == day ? Color(0xff5864D3) : Color(0xff5864D3),
                width: 1.5,
              )),
          onSelected: (isSelected) {
            setState(() {
              if (isSelected) {
                selectedDay = day;
              }
            });
          },
        ),
      );
    }).toList();
  }

  Widget _buildSelectedContent() {
    switch (selectedDay) {
      case "Senin":
        return Container(
          child: Column(
            children: [
              mapelkbm(
                colorbox: Color(0xffff5e48),
                imgPath: "assets/math.svg",
                title: "Matematika",
                teacher: "Jane.Doe S.Pd.",
                desc:
                    "Memahami proses pengerjaan Logaritma Campuran, dan pengerjaan dalam soal perhitungan logika...",
              ),
              mapelkbm(
                  colorbox: Color(0xff94B147),
                  imgPath: "assets/tree.svg",
                  title: "Biologi",
                  teacher: "Jane.Doe S.Pd.",
                  desc: "Memahami konsep fotosintesis di tanaman hydrilia"),
              mapelkbm(
                imgPath: "assets/english.svg",
                title: "Bhs.Inggris",
                teacher: "Jane.Doe S.Pd.",
                desc: "Persiapan Test",
              )
            ],
          ),
          // width: 200,
          // height: 100,
          // color: Colors.blue,
          // child: Center(
          //   child: Text("Konten untuk hari Senin"),
          // ),
        );
      case "Selasa":
        return Container(
          child: Column(children: [
            mapelkbm(
              imgPath: "assets/english.svg",
              title: "Bhs.Inggris",
              teacher: "Jane.Doe S.Pd.",
              desc: "Persiapan Test",
            ),
          ]),
        );
      case "Rabu":
        return Container(
          child: Column(children: [
            mapelkbm(
              colorbox: Color(0xffff5e48),
              imgPath: "assets/math.svg",
              title: "Matematika",
              teacher: "Jane.Doe S.Pd.",
              desc:
                  "Memahami proses pengerjaan Logaritma Campuran, dan pengerjaan dalam soal perhitungan logika...",
            ),
            mapelkbm(
              colorbox: Color(0xffff5e48),
              imgPath: "assets/math.svg",
              title: "Matematika",
              teacher: "Jane.Doe S.Pd.",
              desc:
                  "Memahami proses pengerjaan Logaritma Campuran, dan pengerjaan dalam soal perhitungan logika...",
            ),
            mapelkbm(
              colorbox: Color(0xffff5e48),
              imgPath: "assets/math.svg",
              title: "Matematika",
              teacher: "Jane.Doe S.Pd.",
              desc:
                  "Memahami proses pengerjaan Logaritma Campuran, dan pengerjaan dalam soal perhitungan logika...",
            )
          ]),
        );
      case "Kamis":
        return Container(
          child: Column(children: [
            mapelkbm(
                colorbox: Color(0xff94B147),
                imgPath: "assets/tree.svg",
                title: "Biologi",
                teacher: "Jane.Doe S.Pd.",
                desc: "Memahami konsep fotosintesis di tanaman hydrilia"),
          ]),
        );
      case "Jumat":
        return Container(
            child: Column(children: [
          mapelkbm(
              colorbox: Color(0xff94B147),
              imgPath: "assets/tree.svg",
              title: "Biologi",
              teacher: "Jane.Doe S.Pd.",
              desc: "Memahami konsep fotosintesis di tanaman hydrilia"),
          mapelkbm(
            colorbox: Color(0xffff5e48),
            imgPath: "assets/math.svg",
            title: "Matematika",
            teacher: "Jane.Doe S.Pd.",
            desc:
                "Memahami proses pengerjaan Logaritma Campuran, dan pengerjaan dalam soal perhitungan logika...",
          ),
        ]));
      default:
        return Container();
    }
  }
}
