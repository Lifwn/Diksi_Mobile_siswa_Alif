import 'package:flutter/material.dart';
import 'package:first_app/widget/mapelkbm.dart';

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
