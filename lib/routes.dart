import 'package:bsi_clone/Pages/homepage.dart';
import 'package:bsi_clone/Pages/moreMenuPage.dart';
import 'package:flutter/material.dart';

class Router {
  MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const Homepage(),
        );
      case moreMenu:
        return MaterialPageRoute(builder: (_) => const MoreMenuPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('404 Page Not Found'),
            ),
          ),
        );
    }
  }
}

const String homeRoute = '/';
const String moreMenu = '/MoreMenu';

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
