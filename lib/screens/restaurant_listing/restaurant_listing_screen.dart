import 'package:flutter/material.dart';

class RestaurantListingScreen extends StatelessWidget {
  const RestaurantListingScreen({super.key});
  static const String routeName = '/restaurant_listing';
  static Route route(){
    return MaterialPageRoute(builder: (context) => const  RestaurantListingScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Listing'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/voucher');
        }, child: const Text('Voucher')),
      ),
    );
  }
}