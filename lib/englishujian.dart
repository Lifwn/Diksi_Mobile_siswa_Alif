import 'package:first_app/widget/UjianCard.dart';
import 'package:flutter/material.dart';

class englishujian extends StatelessWidget {
  const englishujian({super.key});

  @override
  Widget build(BuildContext context) {
    return UjianCard(
        subject: "Bhs. Inggris",
        teacherName: "Jane Doe S.Pd.",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla rhoncus velit, id iaculis sem finibus ut. In fringilla dolor vel est auctor tempus. Integer pretium et urna sed aliquet.",
        assetPath: "assets/english.svg",
        totalquestion: "35 Soal",
        hour: "07.00 - 08.30",
        totaltime: "90 menit",
        onTap: () {});
  }
}
