import 'package:cart_getx/models/product.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 2));
    var serverResponse = [
      Product(
          id: 1,
          productPrice: 30,
          productDescription: 'some description about product',
          image: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          productPrice: 40,
          productDescription: 'some description about product',
          image: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          productPrice: 49.5,
          productDescription: 'some description about product',
          image: 'abd',
          productName: 'ThirdProd'),
    ];
    products.value = serverResponse;
  }
}
