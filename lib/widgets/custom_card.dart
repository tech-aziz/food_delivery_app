import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/order_screens/order_controller.dart';

class CustomCard extends StatelessWidget {
  final IconData plusIcon;
  final IconData minusIcon;

  const CustomCard({
    Key? key,
    required this.plusIcon,
    required this.minusIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final OrderController orderController = Get.put(OrderController());
    var size = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;

    return Container(
      padding:const  EdgeInsets.all(8),
      width: orientation == Orientation.portrait? size.width * .26: size.width * .15,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                orderController.decrement();
                // orderController.totalSum();
                print('Minus icon clicked');
              },
              child: Icon(minusIcon)),
          Obx(() => Text(
            orderController.quantity.value.toString(),
            style:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          )),
          InkWell(
              onTap: () {
                orderController.increment();
                print('Plus icon clicked');
              },
              child: Icon(plusIcon)),
        ],
      ),
    );
  }
}
