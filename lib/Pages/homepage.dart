import 'package:bsi_clone/Components/appBarWidget.dart';
import 'package:bsi_clone/Components/bottomNavBar.dart';
import 'package:bsi_clone/Model/listMenuModel.dart';
import 'package:bsi_clone/Pages/info_rekening.dart';
import 'package:bsi_clone/Pages/moreMenuPage.dart';
import 'package:bsi_clone/const.dart';
import 'package:bsi_clone/routes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var nameUser = 'Muhammad Zikrulah';
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarWidget(),
      body: bodyHomePage(context),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }

  SafeArea bodyHomePage(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Column(
          children: [
            Center(
              heightFactor: 3,
              child: Text(
                'Assalamu`alaikum, $nameUser',
                style: const TextStyle(
                  fontFamily: 'Lato-Regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            searchBarWidget(),
            sliderViewWidget(context),
            gridViewMenuList(),
          ],
        ),
      ),
    );
  }

  Center searchBarWidget() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(10),
          color: opacityPrimarycolor,
        ),
        child: const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Cari',
            border: InputBorder.none,
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
      ),
    );
  }

  CarouselSlider sliderViewWidget(BuildContext context) {
    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: false,
        aspectRatio: 2.0,
        onPageChanged: (index, reason) {
          setState(
            () {
              _current = index;
            },
          );
        },
      ),
    );
  }

  GridView gridViewMenuList() {
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
          onTap: () {
            Navigator.push(
              context,
              FadeRoute(
                page: const InfoRekening(),
              ),
            );
          },
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
                  FontAwesomeIcons.arrowRight,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Transfer',
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
                  FontAwesomeIcons.handHoldingUsd,
                  color: primaryColor,
                ),
              ),
              const Text('Bayar'),
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
                  FontAwesomeIcons.fileInvoiceDollar,
                  color: primaryColor,
                ),
              ),
              const Text('Beli'),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                  FontAwesomeIcons.handHolding,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Berbagi-Ziswaf',
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.visible,
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
                  FontAwesomeIcons.wallet,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Top Up e-Wallet',
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
                  FontAwesomeIcons.shoppingBasket,
                  color: primaryColor,
                ),
              ),
              const Text(
                'E-Commerce',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              FadeRoute(
                page: const MoreMenuPage(),
              ),
            );
          },
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
                  Icons.grid_view,
                  color: primaryColor,
                ),
              ),
              const Text(
                'Menu Lainnya',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
