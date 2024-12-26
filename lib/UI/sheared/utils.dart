import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commers/UI/Views/main_view/cart_views/cart_service.dart';
import 'package:e_commers/core/data/models/repository/prodcut_repository.dart';
import 'package:e_commers/core/data/models/repository/shared_prefrence_repository.dart';
import 'package:e_commers/core/service/connectivity_service.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool isEmailValid(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool isValidPassword(String password) {
  return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(password);
}

// Future<XFile?> chooseImage(ImageSource imageSource) async {
//   return await ImagePicker().pickImage(source: imageSource);
// }

double screenWidth(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.width / percent;
  else
    return Get.size.height / percent;
}

double screenHeight(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.height / percent;
  else
    return Get.size.width / percent;
}

SharedPrefrenceRepository get storage => Get.find<SharedPrefrenceRepository>();
ConnectivityService get connectivityService => Get.find<ConnectivityService>();
Connectivity get connectivity => Get.find<Connectivity>();
ProductRepository get productRepository => Get.find<ProductRepository>();
CartService get cartService => Get.find<CartService>();
