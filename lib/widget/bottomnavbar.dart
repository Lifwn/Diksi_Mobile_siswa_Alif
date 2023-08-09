import 'package:first_app/page/homepage.dart';
import 'package:first_app/page/rapor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:first_app/page/paymentpage.dart';
import 'package:first_app/page/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int index = 0;
  final screens = [homepage(), rapor(), paymentpage()];

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }
  void checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;

    if (isLoggedIn) {
      setState(() {
        index = 0;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginpage()),
      );
    }
  }

  // Fungsi untuk logout
  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("isLoggedIn");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => loginpage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.amber.withOpacity(0),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) {
            if (index == 3) {
              logout();
            } else {
              setState(() => this.index = index);
            }
          },
          selectedIndex: index,
          height: 50,
          backgroundColor: Colors.white,
          destinations: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: NavigationDestination(
                selectedIcon: SvgPicture.asset("assets/vector/element.svg"),
                icon: SvgPicture.asset("assets/vector/element-unchoosen.svg"),
                label: '',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: NavigationDestination(
                selectedIcon: SvgPicture.asset("assets/vector/note.svg"),
                icon: SvgPicture.asset("assets/vector/note-unchoosen.svg"),
                label: '',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: NavigationDestination(
                selectedIcon: SvgPicture.asset("assets/vector/Frame.svg"),
                icon: SvgPicture.asset("assets/vector/Frame-unchoosen.svg"),
                label: '',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: NavigationDestination(
                icon: SvgPicture.asset("assets/vector/setting.svg"),
                label: '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
