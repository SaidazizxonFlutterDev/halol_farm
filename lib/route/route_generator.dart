import 'package:flutter/material.dart';
import 'package:halol_farm/screens/my_home_page.dart';
import 'package:halol_farm/screens/splash_screen.dart';

class RouteGenerator {
  static generateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(),
        );

        case '/splash':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
