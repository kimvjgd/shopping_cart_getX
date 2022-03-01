import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/cart_c.dart';
import 'package:shopping_cart/cart_procuts.dart';
import 'package:shopping_cart/cart_total.dart';

class Cart extends StatelessWidget {
  CartController controller = Get.put(CartController());
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Cart View ',style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
            CartProducts(),
          CartTotal(),
        ],
      ),
    );
  }
}
