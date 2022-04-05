import 'package:bsi_clone/Components/appBarWidget.dart';
import 'package:bsi_clone/Components/bottomNavBar.dart';
import 'package:bsi_clone/const.dart';
import 'package:flutter/material.dart';

class InformasiSaldo extends StatefulWidget {
  const InformasiSaldo({Key? key}) : super(key: key);

  @override
  State<InformasiSaldo> createState() => _InformasiSaldoState();
}

class _InformasiSaldoState extends State<InformasiSaldo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: bodyInfoSaldo(context),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }

  SafeArea bodyInfoSaldo(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          appBarEveryPage(
            context,
            'Info Saldo',
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Saldo Anda Saat ini pada akun **********1234 Sebesar',
                ),
                const Text(
                  'Rp 2,000,123',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                  style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                      onPrimary: greyBackgroundColor,
                      shadowColor: Colors.greenAccent,
                      minimumSize: const Size(120, 32)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
