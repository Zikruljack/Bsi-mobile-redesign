// ignore_for_file: unused_import

import 'package:bsi_clone/Components/appBarWidget.dart';
import 'package:bsi_clone/Components/bottomNavBar.dart';
import 'package:bsi_clone/const.dart';
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
        child: gridMoreMenuWidget(),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }

  GridView gridMoreMenuWidget() {
    return GridView.count(
      crossAxisSpacing: 4,
      primary: false,
      mainAxisSpacing: 8,
      childAspectRatio: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      crossAxisCount: 4,
      children: List.generate(
        moreMenu.length,
        (index) => Center(
          child: MoreCard(
            moreMenu: moreMenu[index],
          ),
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
    return Card(
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
              child: Expanded(
                flex: 1,
                child: Icon(
                  moreMenu.icon,
                  size: 25,
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              moreMenu.title,
              style: textStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
