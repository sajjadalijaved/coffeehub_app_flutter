import 'package:flutter/material.dart';
import 'package:workshop2_coffeehub/checkout.dart';
import 'package:workshop2_coffeehub/splashscreen.dart';

class MyRoute {
  static Route ongenerate(RouteSettings settings) {
    if (settings.name == SplashScreen.pageName) {
      return MaterialPageRoute(
          settings: settings, builder: ((context) => const SplashScreen()));
    } else {
      return MaterialPageRoute(
          builder: ((context) => MyCheckout()), settings: settings);
    }
  }
}
