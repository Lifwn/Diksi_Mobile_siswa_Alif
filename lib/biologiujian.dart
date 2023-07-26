import 'package:first_app/widget/UjianCard.dart';
import 'package:flutter/material.dart';

class biologiujian extends StatelessWidget {
  const biologiujian({super.key});

  @override
  Widget build(BuildContext context) {
    return UjianCard(
      subject: "Biologi",
      teacherName: "Jane. Doe S. Pd.",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla rhoncus velit, id iaculis sem finibus ut. In fringilla dolor vel est auctor tempus. Integer pretium et urna sed aliquet.",
      assetPath: "assets/tree.svg",
      totalquestion: "35 Soal",
      totaltime: "75 menit",
      hour: "08.15-09.30",
      onTap: () {},
    );
  }
}
