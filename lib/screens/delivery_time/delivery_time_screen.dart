import 'package:flutter/material.dart';

class DeliveryTimeScreen extends StatelessWidget {
  const DeliveryTimeScreen({super.key});
  static const String routeName = '/delivery';
  static Route route(){
    return MaterialPageRoute(builder: (context) => const  DeliveryTimeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          // Navigator.pushNamed(context, '/location');
        }, child: const Text('Delivery Screen')),
      ),
    );
  }
}
