import 'package:bsi_clone/const.dart';
import 'package:bsi_clone/routes.dart';
import 'package:flutter/material.dart';

class MenuCardWidget extends StatefulWidget {
  final Widget page;
  final String title;
  final IconData icon;

  const MenuCardWidget(
      {Key? key, required this.page, required this.title, required this.icon})
      : super(key: key);

  @override
  State<MenuCardWidget> createState() => _MenuCardWidgetState();
}

class _MenuCardWidgetState extends State<MenuCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          FadeRoute(
            page: widget.page,
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
            child: Icon(
              widget.icon,
              color: primaryColor,
            ),
          ),
          Text(
            widget.title,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
