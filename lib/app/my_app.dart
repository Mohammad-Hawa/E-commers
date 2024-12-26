import 'package:e_commers/UI/Views/main_view/main_view.dart';
import 'package:e_commers/UI/Views/t.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainView(),
    );
  }
}
