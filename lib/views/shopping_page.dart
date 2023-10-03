import 'package:cart_getx/controllers/shopping_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({super.key});
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(builder: (controller) {
              return ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [Text("hh")],
                    ),
                  );
                },
              );
            }),
          ),
          Text('Total amount'),
        ],
      ),
    );
  }
}
