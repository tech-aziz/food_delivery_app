import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens.dart';
import 'package:food_delivery_app/screens/basket/basket_screen.dart';
import 'package:food_delivery_app/screens/checkout/checkout_screen.dart';
import 'package:food_delivery_app/screens/delivery_time/delivery_time_screen.dart';
import 'package:food_delivery_app/screens/filter/filter_screen.dart';
import 'package:food_delivery_app/screens/location/location_screen.dart';
import 'package:food_delivery_app/screens/restaurant_details/restaurant_details_screen.dart';
import 'package:food_delivery_app/screens/restaurant_listing/restaurant_listing_screen.dart';
import 'package:food_delivery_app/screens/voucher/voucher_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckOutScreen.routeName:
        return CheckOutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();
      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
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
