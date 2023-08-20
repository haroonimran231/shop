import 'package:get/state_manager.dart';
import 'package:shop/models/product.dart';

class ShoppingController extends GetxController {
  var products = List.empty().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProduct'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProduct'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProduct'),
    ];

    products.value = productResult;
  }
}
