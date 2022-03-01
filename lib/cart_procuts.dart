import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/cart_c.dart';
import 'package:shopping_cart/product_m.dart';

class CartProducts extends StatelessWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.find();
    return Obx(
      () => SizedBox(
        height: 500.0,
        child: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CartProductCart(
                controller: controller,
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index);
          },
        ),
      ),
    );
  }
}

class CartProductCart extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  CartProductCart(
      {Key? key,
      required this.controller,
      required this.product,
      required this.quantity,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(product.imageUrl,
                height: 100.0, width: 100.0, fit: BoxFit.cover),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
              child: Text(
            product.name,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )),
          IconButton(
            onPressed: () {
              controller.removeProduct(product);
            },
            icon: const Icon(
              Icons.remove_circle_sharp,
              size: 30.0,
            ),
          ),
          Text('$quantity'),
          IconButton(
              onPressed: () {
                controller.addProduct(product);
              },
              icon: const Icon(
                Icons.remove_circle_sharp,
                size: 30.0,
              )),
        ],
      ),
    );
  }
}
