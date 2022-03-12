import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  var _selectedNavBar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // backgroundColor: secondaryColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',

          // backgroundColor: secondaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.mosque),
          label: 'Layanan Islami',
          // backgroundColor: secondaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Lokasi Cabang',
          // backgroundColor: secondaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Customer Care',
          // backgroundColor: secondaryColor,
        ),
      ],
      currentIndex: _selectedNavBar,
      onTap: _changeSelectedNavBar,
    );
    ;
  }
}
