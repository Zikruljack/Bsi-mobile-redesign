import 'package:bsi_clone/Components/appBarWidget.dart';
import 'package:bsi_clone/Components/bottomNavBar.dart';
import 'package:bsi_clone/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoRekening extends StatelessWidget {
  const InfoRekening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            appBarEveryPage(context, 'Info Rekening'),
            infoRekeningGrid(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }

  GridView infoRekeningGrid() {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 20,
      primary: true,
      mainAxisSpacing: 10,
      childAspectRatio: 0.8,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      children: [
        GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  // border: Border.all(width: 2, color: primaryColor),
                  color: greyBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  FontAwesomeIcons.moneyCheck,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Rekening',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  // border: Border.all(width: 2, color: primaryColor),
                  color: greyBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  FontAwesomeIcons.moneyCheck,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Rekening',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  // border: Border.all(width: 2, color: primaryColor),
                  color: greyBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  FontAwesomeIcons.moneyCheck,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Rekening',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  // border: Border.all(width: 2, color: primaryColor),
                  color: greyBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  FontAwesomeIcons.moneyCheck,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Rekening',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
