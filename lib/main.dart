import 'package:e_commers/app/my_app.dart';
import 'package:e_commers/core/data/models/repository/prodcut_repository.dart';
import 'package:get/get.dart';
import 'package:e_commers/core/data/models/repository/shared_prefrence_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => SharedPrefrenceRepository());
  Get.lazyPut(() => ProductRepository());

  await Get.putAsync(() async {
    return await SharedPreferences.getInstance();
  });

  runApp(MyApp());
}