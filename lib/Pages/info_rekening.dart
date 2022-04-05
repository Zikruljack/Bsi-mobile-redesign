import 'package:bsi_clone/Components/appBarWidget.dart';
import 'package:bsi_clone/Components/bottomNavBar.dart';
import 'package:bsi_clone/Components/menuCardWidget.dart';
import 'package:bsi_clone/Pages/informasi_saldo.dart';
import 'package:bsi_clone/Pages/moreMenuPage.dart';
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
      childAspectRatio: 0.5,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      children: [
        MenuCardWidget(
            page: InformasiSaldo(),
            title: 'Informasi Saldo',
            icon: FontAwesomeIcons.accessibleIcon),
        MenuCardWidget(
            page: MoreMenuPage(),
            title: 'Daftar Mutasi',
            icon: FontAwesomeIcons.accessibleIcon),
        MenuCardWidget(
            page: MoreMenuPage(),
            title: 'Informasi Portofolio',
            icon: FontAwesomeIcons.accessibleIcon),
        MenuCardWidget(
            page: MoreMenuPage(),
            title: 'Daftar Transaksi Terjadwal',
            icon: FontAwesomeIcons.accessibleIcon),
        MenuCardWidget(
            page: MoreMenuPage(),
            title: 'Registrasi Notifikasi',
            icon: FontAwesomeIcons.accessibleIcon),
      ],
    );
  }
}
