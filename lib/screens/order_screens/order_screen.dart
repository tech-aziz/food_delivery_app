import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/utilities/colors.dart';
import 'package:get/get.dart';
import '../../widgets/custom_card.dart';
import '../order_overview_screens/order_overview.dart';
import 'order_controller.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OrderController orderController = Get.put(OrderController());
    var size = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    List<Map<String, dynamic>> productList = [
      {
        'img':
            'https://www.allrecipes.com/thmb/0xH8n2D4cC97t7mcC7eT2SDZ0aE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6776_Pizza-Dough_ddmfs_2x1_1725-fdaa76496da045b3bdaadcec6d4c5398.jpg',
        'title': 'One',
        'price': '12',
        'subItem': 'Tasty',
      },
      {
        'img':
            'https://www.foodandwine.com/thmb/Wd4lBRZz3X_8qBr69UOu2m7I2iw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/classic-cheese-pizza-FT-RECIPE0422-31a2c938fc2546c9a07b7011658cfd05.jpg',
        'title': 'Two',
        'price': '32',
        'subItem': 'Awesome',
      },
      {
        'img':
            'https://www.allrecipes.com/thmb/0xH8n2D4cC97t7mcC7eT2SDZ0aE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6776_Pizza-Dough_ddmfs_2x1_1725-fdaa76496da045b3bdaadcec6d4c5398.jpg',
        'title': 'Three',
        'price': '12',
        'subItem': 'Tasty',
      },
      {
        'img':
            'https://www.foodandwine.com/thmb/Wd4lBRZz3X_8qBr69UOu2m7I2iw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/classic-cheese-pizza-FT-RECIPE0422-31a2c938fc2546c9a07b7011658cfd05.jpg',
        'title': 'Four',
        'price': '32',
        'subItem': 'Awesome',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xffFBFBFF),
      appBar: AppBar(
        backgroundColor: appBg,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
          size: 17,
        ),
        title: const Text(
          'My Order',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height * 0.3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 25,
                                  ),
                                  height: orientation == Orientation.portrait
                                      ? size.height * .14
                                      : size.height * .33,
                                  width: size.width * .9,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      // color: Colors.white,
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.grey.withOpacity(.5))),
                                  child: Row(
                                    children: [
                                      // Expanded(flex: 1, child: Container()),
                                      Container(
                                        width: size.width * .260,
                                      ),
                                      Container(),
                                      Expanded(
                                          flex: orientation ==
                                                  Orientation.portrait
                                              ? 1
                                              : 6,
                                          child: orientation ==
                                                  Orientation.portrait
                                              ? Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      productList[index]
                                                          ['title'],
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 19),
                                                    ),
                                                    const Text(
                                                      'Add: Cheese, Onion',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 15,
                                                          color: Colors.grey),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            '\$${productList[index]['price']}',
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17)),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 12),
                                                          child:
                                                              const CustomCard(
                                                            plusIcon: Icons.add,
                                                            minusIcon:
                                                                Icons.remove,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )
                                              : Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Small Margherita Pizza ',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            Text(
                                                              'Add: Cheese, Onion',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize: 15,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Obx(
                                                          () => Text(
                                                              '\$${orderController.totalPrice.value}',
                                                              style: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      21)),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 12),
                                                          child:
                                                              const CustomCard(
                                                            plusIcon: Icons.add,
                                                            minusIcon:
                                                                Icons.remove,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: orientation == Orientation.portrait
                                        ? .2
                                        : 2,
                                    child: Image.asset(
                                      'assets/images/pizza.png',
                                      height: 120,
                                      width: 120,
                                      fit: BoxFit.fill,
                                    ))
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                height: size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // color: Colors.white,
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(.5))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'SubTotal',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Obx(() => Text(
                                  '\$${orderController.totalPrice.value}',
                                  style: const TextStyle(color: Colors.grey),
                                ))
                          ]),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Fee',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '\$2',
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Others Fee',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '\$2',
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                      const SizedBox(
                        height: 2,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Obx(() => Text(
                                  '\$${orderController.totalPrice.value + 4}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ))
                          ]),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                height: size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // color: Colors.white,
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(.5))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text('Your delivery address',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: SvgPicture.asset(
                                      'assets/images/location.svg',
                                      width: 22,
                                    ),
                                    // child: Icon(
                                    //   Icons.location_on_outlined,
                                    //   color: Colors.grey,
                                    //   size: 22,
                                    // ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text('56/b, Lake Circus Kalabagan',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16)),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text('Payment method',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: SvgPicture.asset(
                                      'assets/images/wallet.svg',
                                      width: 22,
                                      color: Colors.grey,
                                    ),
                                    // child: Icon(
                                    //   Icons.money,
                                    //   color: Colors.grey,
                                    //   size: 22,
                                    // ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text('Cash',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16)),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const OrderOverview()));
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(30),
                      // color: Colors.white,
                      border: Border.all(
                          width: 1, color: Colors.grey.withOpacity(.5))),
                  child: const Center(
                    child: Text(
                      'Place Order',
                      style: TextStyle(
                          color: Color(0xffFFDF9A),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
