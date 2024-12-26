import 'package:e_commers/core/data/models/cart_model.dart';
import 'package:e_commers/core/data/models/product_info.dart';
import 'package:get/get.dart';

class DeatilsController extends GetxController {
  RxList<ProductModel> photoList = <ProductModel>[].obs;
  RxList<CartModel> cartList = <CartModel>[].obs;
  RxInt qty = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
}
