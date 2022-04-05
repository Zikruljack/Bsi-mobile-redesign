// ignore_for_file: unused_import

import 'package:bsi_clone/Components/appBarWidget.dart';
import 'package:bsi_clone/Components/bottomNavBar.dart';
import 'package:bsi_clone/Components/menuCardWidget.dart';
import 'package:bsi_clone/Pages/homepage.dart';
import 'package:bsi_clone/const.dart';
import 'package:bsi_clone/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreMenuPage extends StatefulWidget {
  const MoreMenuPage({Key? key}) : super(key: key);

  @override
  State<MoreMenuPage> createState() => _MoreMenuPageState();
}

class _MoreMenuPageState extends State<MoreMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            appBarEveryPage(context, 'Menu Lainnya'),
            buttonSemuaFavorite(),
            gridMoreMenuWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }

  Center buttonSemuaFavorite() {
    return Center(
      heightFactor: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFF6AA43),
            ),
            alignment: Alignment.center,
            child: const Text('Semua'),
          ),
          Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFFDEED9),
            ),
            alignment: Alignment.center,
            child: const Text('Favorit'),
          )
        ],
      ),
    );
  }

  GridView gridMoreMenuWidget() {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 20,
      primary: true,
      mainAxisSpacing: 10,
      childAspectRatio: 0.8,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      children: const [
        MenuCardWidget(
          page: MoreMenuPage(),
          title: 'E-Mas',
          icon: FontAwesomeIcons.bars,
        ),
        MenuCardWidget(
          page: MoreMenuPage(),
          title: 'E-Mas',
          icon: FontAwesomeIcons.fileInvoiceDollar,
        ),
        MenuCardWidget(
          page: MoreMenuPage(),
          title: 'E-Mas',
          icon: FontAwesomeIcons.creditCard,
        ),
        MenuCardWidget(
          page: MoreMenuPage(),
          title: 'E-Mas',
          icon: FontAwesomeIcons.calendarCheck,
        ),
        MenuCardWidget(
          page: MoreMenuPage(),
          title: 'E-Mas',
          icon: FontAwesomeIcons.keyboard,
        ),
      ],
    );
  }
}
