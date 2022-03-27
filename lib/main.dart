import 'package:bsi_clone/Pages/homepage.dart';
import 'package:bsi_clone/const.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFFFFFFF),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: secondaryColor,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: secondaryColor,
          selectedItemColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
