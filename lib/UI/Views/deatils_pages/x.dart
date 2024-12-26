
// import 'package:e_commers/UI/sheared/sheared_wedgits/custom_toast.dart';
// import 'package:e_commers/UI/sheared/utils.dart';
// import 'package:e_commers/core/data/models/product_info.dart';
// import 'package:get/get.dart';

// class ALLProductsController extends GetxController {
//   RxList<ProductModel> allproductList = <ProductModel>[].obs;
//   RxList<ProductModel> allproductFound = <ProductModel>[].obs;
//   RxInt x = 0.obs;
//   bool isMessageDisplayed = true;

//   @override
//   void onInit() {
//     super.onInit();
//     getAllProdcut();
//   }

//   void getAllProdcut() async {
//     final result = await productRepository.getAllProduct();
//     result.fold(
//       (l) {
//         CustomToast.showMessage(message: l.toString(), type: MessageType.ERROR);
//       },
//       (r) {
//         allproductList.addAll(r);
//         allproductFound.addAll(r);
//       },
//     );
//   }

//   void searchLocal(
//     String enterKeyWord,
//   ) {
//     if (enterKeyWord.isEmpty) {
//       allproductFound.value = allproductList;
//     } else {
//       if (isMessageDisplayed) {
//         CustomToast.showMessage(
//             message: 'No Resolte Searsh', type: MessageType.INFO);
//         isMessageDisplayed = false;
//       }
//       final result = allproductList.where((title) => title.title
//           .toString()
//           .toLowerCase()
//           .contains(enterKeyWord.toLowerCase()));
//       allproductFound.value = result.toList();
//     }

//     x.value += 1;

//     return;
//   }
// }