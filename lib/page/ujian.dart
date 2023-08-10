import 'package:first_app/page/biologiujian.dart';
import 'package:first_app/page/englishujian.dart';
import 'package:first_app/page/matematikaujian.dart';
import 'package:first_app/widget/sidebar.dart';
import 'package:first_app/widget/mapelujian.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ujian extends StatefulWidget {
  const ujian({super.key});

  @override
  State<ujian> createState() => ujianState();
}

class ujianState extends State<ujian> {
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
                            'Jadwal Ujian',
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
                  children: [chips()], // CONTENT CHILDREN
                ),
              ) //CONTENT CONTAINER
            ]),
      )),
    );
  }
}

class chips extends StatefulWidget {
  @override
  _chipsState createState() => _chipsState();
}

class _chipsState extends State<chips> {
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
              mapelujian(
                colorbox: Color(0xffff5e48),
                imgPath: "assets/math.svg",
                title: "Matematika",
                teacher: "Jane.Doe S.Pd.",
                time: "Sudah Mulai",
                point1: " -  Aritmatika",
                point2: " -  Bangun Datar",
                point3: " - Logaritma dalam Pemecahan Sehari Hari",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => matematikaujian()),
                  );
                },
              ),
              mapelujian(
                colorbox: Color(0xff94B147),
                imgPath: "assets/tree.svg",
                title: "Biologi",
                teacher: "Jane.Doe S.Pd.",
                time: "09.00 - 10.30",
                point1: " - Fotosintesis",
                point2: " - Sel Tumbuhan dan Hewan",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => biologiujian()),
                  );
                },
              ),
              mapelujian(
                imgPath: "assets/english.svg",
                title: "Bhs.Inggris",
                teacher: "Jane.Doe S.Pd.",
                time: "10.30 - 12.00",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => englishujian()),
                  );
                },
              )
            ],
          ),
        );
      case "Selasa":
        return Container(
          child: Column(children: [
            mapelujian(
              imgPath: "assets/english.svg",
              title: "Bhs.Inggris",
              teacher: "Jane.Doe S.Pd.",
            ),
          ]),
        );
      case "Rabu":
        return Container(
          child: Column(children: [
            mapelujian(
              colorbox: Color(0xffff5e48),
              imgPath: "assets/math.svg",
              title: "Matematika",
              teacher: "Jane.Doe S.Pd.",
              time: "Sudah Mulai",
              point1: " -  Aritmatika",
              point2: " -  Bangun Datar",
              point3: " - Logaritma dalam Pemecahan Sehari Hari",
            ),
            mapelujian(
              colorbox: Color(0xffff5e48),
              imgPath: "assets/math.svg",
              title: "Matematika",
              teacher: "Jane.Doe S.Pd.",
              time: "Sudah Mulai",
              point1: " -  Aritmatika",
              point2: " -  Bangun Datar",
              point3: " - Logaritma dalam Pemecahan Sehari Hari",
            ),
            mapelujian(
              colorbox: Color(0xffff5e48),
              imgPath: "assets/math.svg",
              title: "Matematika",
              teacher: "Jane.Doe S.Pd.",
              time: "Sudah Mulai",
              point1: " -  Aritmatika",
              point2: " -  Bangun Datar",
              point3: " - Logaritma dalam Pemecahan Sehari Hari",
            )
          ]),
        );
      case "Kamis":
        return Container(
          child: Column(children: [
            mapelujian(
              colorbox: Color(0xff94B147),
              imgPath: "assets/tree.svg",
              title: "Biologi",
              teacher: "Jane.Doe S.Pd.",
              time: "09.00 - 10.30",
              point1: " - Fotosintesis",
              point2: " - Sel Tumbuhan dan Hewan",
            ),
          ]),
        );
      case "Jumat":
        return Container(
            child: Column(children: [
          mapelujian(
            colorbox: Color(0xff94B147),
            imgPath: "assets/tree.svg",
            title: "Biologi",
            teacher: "Jane.Doe S.Pd.",
            time: "09.00 - 10.30",
            point1: " - Fotosintesis",
            point2: " - Sel Tumbuhan dan Hewan",
          ),
          mapelujian(
            colorbox: Color(0xffff5e48),
            imgPath: "assets/math.svg",
            title: "Matematika",
            teacher: "Jane.Doe S.Pd.",
            time: "Sudah Mulai",
            point1: " -  Aritmatika",
            point2: " -  Bangun Datar",
            point3: " - Logaritma dalam Pemecahan Sehari Hari",
          ),
        ]));
      default:
        return Container();
    }
  }
}
