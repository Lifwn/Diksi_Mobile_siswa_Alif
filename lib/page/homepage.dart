import 'dart:convert';

import 'package:first_app/page/biologi.dart';
import 'package:first_app/page/english.dart';
import 'package:first_app/page/jadwalkbm.dart';
import 'package:http/http.dart' as http;

import 'package:first_app/widget/link.dart';
import 'package:first_app/widget/mapelhome.dart';
import 'package:flutter/material.dart';

import 'package:first_app/widget/sidebar.dart';
import 'package:first_app/widget/pagec1.dart';

import 'package:first_app/page/matematika.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:intl/intl.dart';

import '../widget/template_box.dart';

final _controller = PageController();

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => homepageState();
}

class homepageState extends State<homepage> {
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

  String getGreeting() {
    var now = DateTime.now();
    var formatter = DateFormat('HH.mm');
    var currentTime = double.parse(formatter.format(now));

    if (currentTime >= 5.50 && currentTime <= 9.59) {
      return 'Selamat Pagi,';
    } else if (currentTime >= 10.00 && currentTime <= 14.59) {
      return 'Selamat Siang,';
    } else if (currentTime >= 15.00 && currentTime <= 17.59) {
      return 'Selamat Sore,';
    } else {
      return 'Selamat Malam,';
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
                margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          getGreeting(), // Menggunakan fungsi getGreeting() di sini
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1),
                        child: Text(
                          username,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
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
                //CONTENT CONTAINER
                margin: EdgeInsets.only(top: 25),
                color: Color(0xfff5f5f5),
                child: Column(
                  children: [
                    //CONTENT CHILDREN
                    link(
                      // e-mading - selengkapnya
                      text: "e-Mading",
                      route: () {},
                    ),
                    Container(
                      //CONTAINER CAROUSEL
                      child: Column(children: [
                        //#####################################################################
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: SizedBox(
                            height: 150,
                            width: 300,
                            child: PageView(
                              controller: _controller,
                              children: [
                                pagec(
                                  imgpath: "assets/mading.png",
                                ),
                                pagec(
                                  imgpath:
                                      "http://127.0.0.1:9000/images/latest/1",
                                ),
                                pagec(
                                  imgpath:
                                      "http://127.0.0.1:9000/images/latest/2",
                                ),
                                pagec(
                                  imgpath:
                                      "http://127.0.0.1:9000/images/latest/3",
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          margin: EdgeInsets.only(bottom: 0),
                          child: SmoothPageIndicator(
                            effect: JumpingDotEffect(
                                dotHeight: 7,
                                dotWidth: 7,
                                dotColor:
                                    const Color.fromARGB(113, 158, 158, 158),
                                activeDotColor: Colors.grey),
                            controller: _controller,
                            count: 4,
                          ),
                        )

                        //#####################################################################
                      ] //children
                          ),
                    ), //CONTAINER CAROUSEL
                    link(
                      // jadwal hari ini - selengkapnya
                      text: "Jadwal Hari Ini",
                      route: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => jadwalkbm()),
                        );
                      },
                    ),

                    Container(
                      //Container 2 BOX
                      margin: EdgeInsets.only(top: 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TemplateBox(
                              colorBox: Color(0xffff5e48),
                              margin: EdgeInsets.only(left: 30),
                              imgPath: "assets/math.svg",
                              title: "Matematika",
                              teacher: "Jane Doe S.Pd.",
                              date: "Senin 3 Desember",
                              desc: "Mempelajari Tenta...",
                              time: "2 Jam Pelajaran",
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => matematika(),
                                    ));
                              },
                            ),
                            TemplateBox(
                              colorBox: Color(0xff94B147),
                              margin: EdgeInsets.only(right: 30),
                              imgPath: "assets/tree.svg",
                              title: "Biologi",
                              teacher: "John Doe S.Pd.",
                              date: "Senin 3 Desember",
                              desc: "Ulangan Fotosint...",
                              time: "2 Jam Pelajaran",
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => biologi()));
                              },
                            )
                          ]),
                    ), //2 box
                    link(
                      // mata pelajaran - selengkapnya
                      text: "Mata Pelajaran",
                      route: () {},
                    ),
                    mapelhome(
                      imgpath: "assets/math.svg",
                      colorbox: Color(0xffff5e48),
                      title: "Matematika",
                      teacher: "Jane Doe S. Pd.",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => matematika()),
                        );
                      },
                    ),
                    mapelhome(
                      imgpath: "assets/english.svg",
                      colorbox: Color(0xff7C87F3),
                      title: "Bhs. Inggris",
                      teacher: "Jane Doe S. Pd.",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => english()),
                        );
                      },
                    ),
                    mapelhome(
                      imgpath: "assets/tree.svg",
                      colorbox: Color(0xff94B147),
                      title: "Biologi",
                      teacher: "John Doe S. Pd.",
                      onTap: () {
                        final snackBar = SnackBar(
                          content: const Text('Yay! A SnackBar!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),

                    link(
                      // tugas hari ini - selengkapnya
                      text: "Tugas Hari ini",
                      route: () {},
                    ),
                    Container(
                      // Tugas Hari ini
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: InkWell(
                                //Mata Pelajaran
                                onTap: () {
                                  final snackBar = SnackBar(
                                    content: const Text('Yay! A SnackBar!'),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      onPressed: () {
                                        // Some code to undo the change.
                                      },
                                    ),
                                  );

                                  // Find the ScaffoldMessenger in the widget tree
                                  // and use it to show a SnackBar.
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                                child: Card(
                                  child: Container(
                                      color: Colors.black.withOpacity(0.05),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(12, 12, 12, 30),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Card(
                                                  color: Color(0xff94B147),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Container(
                                                      height: 43.5,
                                                      width: 43.5,
                                                      child: Image.asset(
                                                          'assets/tree.png'))),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 12),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Biologi',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                        'Tenggat : 27 Des 2022')
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 77),
                                                child: Image.asset(
                                                  'assets/Vector.png',
                                                  height: 9,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ]),
                                            Divider(
                                              color: Colors.black,
                                            ),
                                            // Call List String #######################
                                            Text(
                                              '- Merangkum Materi di Bab 4',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '- Tugas Essay',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )),
                                )),
                          ),
                        ],
                      ),
                    )
                  ], // CONTENT CHILDREN
                ),
              ) //CONTENT CONTAINER
            ]),
      )),
      // bottomNavigationBar: navbar(),
      // bottomNavigationBar: bottomnavbar(),
    );
  }
}
