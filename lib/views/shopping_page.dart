import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card();
            },
          ),
          Text('Total amount')
        ],
      ),
    );
  }
}
