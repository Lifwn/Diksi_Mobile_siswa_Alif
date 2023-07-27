import 'package:first_app/page/homepage.dart';
import 'package:first_app/page/rapor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:first_app/page/paymentpage.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int index = 0;

  final screens = [homepage(), rapor(), paymentpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.amber.withOpacity(0)),
          child: NavigationBar(
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              selectedIndex: index,
              height: 50,
              backgroundColor: Colors.white,
              destinations: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: NavigationDestination(
                        selectedIcon:
                            SvgPicture.asset("assets/vector/element.svg"),
                        icon: SvgPicture.asset(
                            "assets/vector/element-unchoosen.svg"),
                        label: '')),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: NavigationDestination(
                        selectedIcon:
                            SvgPicture.asset('assets/vector/note.svg'),
                        icon: SvgPicture.asset(
                            'assets/vector/note-unchoosen.svg'),
                        label: '')),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: NavigationDestination(
                        selectedIcon:
                            SvgPicture.asset('assets/vector/Frame.svg'),
                        icon: SvgPicture.asset(
                            'assets/vector/Frame-unchoosen.svg'),
                        label: '')),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: NavigationDestination(
                        icon: SvgPicture.asset('assets/vector/setting.svg'),
                        label: '')),
              ])),
    );
  }
}
