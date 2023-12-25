
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens.dart';
import 'package:food_delivery_app/screens/location/location_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: const Text('error'),
                centerTitle: true,
              ),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}
