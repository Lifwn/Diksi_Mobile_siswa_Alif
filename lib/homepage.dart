import 'package:first_app/pagec1.dart';
import 'package:flutter/material.dart';
import 'package:first_app/loginpage.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final _controller = PageController();

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => homepageState();
}

class homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Image.asset('assets/menu.png'),
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
                            'John Doe!',
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
                    //CONTENT CHILDREN
                    Container(
                      //e-mading - selengkapnya
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //e-mading - selengkapnya
                            Text(
                              'e-Mading',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Selengkapnya >',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff5864D3)),
                                ))
                          ] //e-mading - selengkapnya children
                          ),
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
                                pagec1(),
                                pagec1(),
                                pagec1(),
                                pagec1(),
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
                    Container(
                      //e-mading - selengkapnya
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Jadwal hari Ini - selengkapnya
                            Text(
                              'Jadwal Hari Ini',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Selengkapnya >',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff5864D3)),
                                ))
                          ] //Jadwal Hari Ini - selengkapnya children
                          ),
                    ),
                    Container(
                      //Container 2 BOX
                      margin: EdgeInsets.only(top: 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              //container Area Kiri
                              child: Column(
                                children: [
                                  Card(
                                    //box kiri
                                    color: Color(0xffff5e48),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                      height: 132,
                                      width: 148,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 16, top: 16),
                                              child: Image.asset(
                                                'assets/math.png',
                                                width: 24,
                                                height: 24,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 37, left: 16),
                                              child: Text(
                                                'Matematika',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 16),
                                              child: Text(
                                                'Jane Doe S. pd.',
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    //deskripsi
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Senin, 3 Desember',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.25)),
                                        ),
                                        Text(
                                          'Mempelajari Tenta...',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '2 Jam Pelajaran',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.25)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              //container Area Kanan
                              child: Column(
                                children: [
                                  Card(
                                    //box kiri
                                    color: Color(0xff94B147),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                      height: 132,
                                      width: 148,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 16, top: 16),
                                              child: Image.asset(
                                                'assets/tree.png',
                                                width: 24,
                                                height: 24,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 37, left: 16),
                                              child: Text(
                                                'Biologi',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 16),
                                              child: Text(
                                                'John Doe S. pd.',
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    //deskripsi
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Senin, 3 Desember',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.25)),
                                        ),
                                        Text(
                                          'Ulangan Fotosint...',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '2 Jam Pelajaran',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.25)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
                    ), //2 box
                    Container(
                      //e-mading - selengkapnya
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Mata Pelajaran - selengkapnya
                            Text(
                              'Mata Pelajaran',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Selengkapnya >',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff5864D3)),
                                ))
                          ] //Mata Pelajaran - selengkapnya children
                          ),
                    ),
                  ], // CONTENT CHILDREN
                ),
              ) //CONTENT CONTAINER
            ]),
      )),
    );
  }
}
