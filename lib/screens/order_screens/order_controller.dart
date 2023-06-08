import 'package:get/get.dart';

class OrderController extends GetxController {
  var quantity = 1.obs;

  RxDouble totalPrice = 8.50.obs;
  RxDouble itemPrice = 8.50.obs;

  void increment() {
    quantity++;
    totalSum();
  }

  void decrement() {
    if (quantity == 1) {
      return;
    }
    quantity--;
    totalSub();
  }

  void totalSum() {
    totalPrice.value = (quantity * itemPrice.toDouble()).toDouble();
  }

  void totalSub() {
    totalPrice.value = (totalPrice - itemPrice .toDouble()).toDouble();
  }
}
