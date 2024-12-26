import 'package:bot_toast/bot_toast.dart';
import 'package:e_commers/UI/Views/deatils_pages/deatils_page.dart';
import 'package:e_commers/core/data/models/product_info.dart';
import 'package:e_commers/core/data/models/repository/prodcut_repository.dart';
import 'package:get/get.dart';

class AllcategoryController extends GetxController {
  RxList<ProductModel> productList = <ProductModel>[].obs;
  RxList<String> cate = ['All', 'electronics', 'jewelery'].obs;
  RxString selected = 'All'.obs;
  RxInt qty = 0.obs;
  void productdeatils(index) {
    Get.to(
      () => DeatilsPage(
        productModel: productList[index],
      ),
    );
  }

  @override
  void onInit() {
    getAllProduct();
    super.onInit();
  }

  void getAllProduct({String? category = 'All'}) {
    ProductRepository.getAllProduct(typeproduct: category).then((value) {
      value.fold((l) {
        BotToast.showText(text: l);
      }, (r) {
        productList.clear();
        productList.addAll(r);
      });
    });
  }
}
