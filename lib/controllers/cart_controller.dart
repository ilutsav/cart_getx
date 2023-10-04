import 'package:cart_getx/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + item.productPrice!);

  void addToCart(Product product) {
    cartItems.add(product);
  }
}
