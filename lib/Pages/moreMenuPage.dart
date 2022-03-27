// ignore_for_file: unused_import

import 'package:bsi_clone/Components/appBarWidget.dart';
import 'package:bsi_clone/Components/bottomNavBar.dart';
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
    return GridView.count(
      crossAxisSpacing: 4,
      primary: false,
      childAspectRatio: 0.8,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      crossAxisCount: 3,
      children: List.generate(
        moreMenu.length,
        (index) => MoreCard(
          moreMenu: moreMenu[index],
        ),
      ),
    );
  }
}

class MoreMenu {
  const MoreMenu({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<MoreMenu> moreMenu = [
  MoreMenu(title: 'E-Mas', icon: FontAwesomeIcons.bars),
  MoreMenu(title: 'Tarik Tunai', icon: FontAwesomeIcons.fileInvoiceDollar),
  MoreMenu(title: 'Buka Rekening', icon: FontAwesomeIcons.creditCard),
  MoreMenu(title: 'Transaksi Terjadwal', icon: FontAwesomeIcons.calendarCheck),
  MoreMenu(title: 'Keyboard', icon: FontAwesomeIcons.keyboard),
];

class MoreCard extends StatelessWidget {
  const MoreCard({Key? key, required this.moreMenu}) : super(key: key);
  final MoreMenu moreMenu;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.caption;
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              // border: Border.all(width: 2, color: primaryColor),
              color: greyBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              moreMenu.icon,
              color: primaryColor,
            ),
          ),
          Text(
            moreMenu.title,
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
