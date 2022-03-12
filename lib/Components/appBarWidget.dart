import 'package:bsi_clone/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Image appLogo = const Image(
  image: ExactAssetImage('assets/img/bsi_logo.png'),
  height: 60,
  width: 150,
  fit: BoxFit.fitWidth,
  alignment: FractionalOffset.center,
);

AppBar appBarWidget() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: const Icon(
      FontAwesomeIcons.bars,
      color: primaryColor,
      size: 30,
    ),
    title: appLogo,
    titleSpacing: 0.5,
    actions: [
      Padding(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.notifications_none,
                color: primaryColor,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.qr_code_scanner_rounded,
                color: primaryColor,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.circle_sharp,
              color: Colors.green,
              size: 14,
            )
          ],
        ),
      ),
    ],
  );
}
