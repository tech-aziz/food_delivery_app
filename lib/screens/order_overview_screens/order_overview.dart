import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utilities/colors.dart';

class OrderOverview extends StatelessWidget {
  const OrderOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appBg,
        leading: InkWell(
          onTap: () {
            // Get.back();
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: 17,
          ),
        ),
        title: const Text(
          'Order Overview',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
