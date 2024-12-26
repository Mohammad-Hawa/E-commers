import 'package:bot_toast/bot_toast.dart';
import 'package:e_commers/UI/sheared/sheared_wedgits/custom_toast.dart';
import 'package:e_commers/core/data/models/product_info.dart';
import 'package:e_commers/core/data/models/repository/prodcut_repository.dart';
import 'package:get/get.dart';

class categoryController extends GetxController {
  RxList<ProductModel> categorylist = <ProductModel>[].obs;
  RxList<ProductModel> allproductFound = <ProductModel>[].obs;
  RxInt x = 0.obs;
  bool isMessageDisplayed = true;
  @override
  void onInit() {
    getAllCategory();
    super.onInit();
  }

  void getAllCategory() {
    ProductRepository.getAllCategory().then((value) {
      value.fold((l) {
        BotToast.showText(text: l);
      }, (r) {});
    });
  }

  void searchLocal(
    String enterKeyWord,
  ) {
    if (enterKeyWord.isEmpty) {
      allproductFound.value = categorylist;
    } else {
      if (isMessageDisplayed) {
        CustomToast.showMessage(
            message: 'No Resolte Searsh', type: MessageType.INFO);
        isMessageDisplayed = false;
      }
      final result = categorylist.where((title) => title.title
          .toString()
          .toLowerCase()
          .contains(enterKeyWord.toLowerCase()));
      allproductFound.value = result.toList();
    }
    x.value += 1;

    return;
  }
}
