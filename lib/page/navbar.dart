import 'package:first_app/page/homepage.dart';
import 'package:first_app/page/rapor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class navbar extends StatefulWidget {
  @override
  _navbarState createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _currentIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homepage()));
        break;
      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => rapor()));
        break;
      case 2:
        // Navigasi ke halaman lain jika diperlukan
        break;
      case 3:
        // Navigasi ke halaman lain jika diperlukan
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: _onTabSelected,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_currentIndex == 0
              ? 'assets/vector/element.svg'
              : 'assets/vector/element-unchoosen.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_currentIndex == 1
              ? 'assets/vector/note.svg'
              : 'assets/vector/note-unchoosen.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_currentIndex == 2
              ? 'assets/vector/Frame.svg'
              : 'assets/vector/Frame-unchoosen.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/vector/setting.svg'),
          label: '',
        ),
      ],
    );
  }
}
