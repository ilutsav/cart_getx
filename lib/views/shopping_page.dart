import 'package:cart_getx/controllers/cart_controller.dart';
import 'package:cart_getx/controllers/shopping_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const heading = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
    const body = TextStyle(fontSize: 14);
    const values = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(builder: (controller) {
              return ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(12),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${controller.products[index].productName}',
                                    style: heading,
                                  ),
                                  Text(
                                    '${controller.products[index].productDescription}',
                                    style: body,
                                  ),
                                ],
                              ),
                              Text(
                                '\$${controller.products[index].productPrice}',
                                style: values,
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              cartController
                                  .addToCart(controller.products[index]);
                            },
                            child: const Text('Add to cart'),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          GetX<CartController>(builder: (controller) {
            return Text('Total amount:' + cartController.totalPrice.toString());
          }),
          const SizedBox(
            height: 100,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_checkout),
          label: GetX<CartController>(builder: (controller) {
            return Text(controller.count.toString());
          })),
    );
  }
}
