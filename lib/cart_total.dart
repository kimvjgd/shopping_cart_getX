import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/cart_c.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=> Container(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.orange),),
              Text('\$${controller.total}',style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.orange))
            ],
          ),
        )
    );
  }
}
