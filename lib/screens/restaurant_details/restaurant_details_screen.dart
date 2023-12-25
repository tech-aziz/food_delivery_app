import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});
  static const String routeName = '/restaurant_details';
  static Route route(){
    return MaterialPageRoute(builder: (context) => const  RestaurantDetailsScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Details'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/restaurant_listing');
        }, child: const Text('Restaurant Screen')),
      ),
    );
  }
}