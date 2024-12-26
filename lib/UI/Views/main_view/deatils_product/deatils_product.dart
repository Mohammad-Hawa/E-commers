import 'dart:ffi';

import 'package:e_commers/UI/Views/deatils_pages/deatils_controller.dart';
import 'package:e_commers/UI/Views/main_view/cart_views/cart_service.dart';
import 'package:e_commers/UI/Views/main_view/home_view/home_controller.dart';
import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/sheared/custom_wedgits/custom_text.dart';
import 'package:e_commers/core/data/models/product_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeatilsProduct extends StatefulWidget {
  final ProductModel Product;
  const DeatilsProduct({
    super.key,
    required this.Product,
  });

  @override
  State<DeatilsProduct> createState() => _DeatilsProductState();
}

class _DeatilsProductState extends State<DeatilsProduct> {
  AllcategoryController controller = Get.put(AllcategoryController());
  DeatilsController controller1 = Get.put(DeatilsController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            end: size.width / 15, start: size.width / 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: widget.Product.title.toString(),
              styleType: TextStyleType.SUBTITLE,
            ),
            Image.network(
              widget.Product.image.toString(),
              height: size.width / 1.5,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: size.width / 15, bottom: size.width / 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: 'Description:'),
                  CustomText(text: widget.Product.rating.toString()),
                ],
              ),
            ),
            CustomText(
                text: widget.Product.description.toString(),
                styleType: TextStyleType.CUSTOM),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: size.width / 15, bottom: size.width / 15),
              child: Row(
                children: [
                  CustomText(
                    text: 'Category:',
                    textColor: Appcolors.depbluecolor,
                    styleType: TextStyleType.TITLE,
                  ),
                  SizedBox(
                    width: size.width / 60,
                  ),
                  CustomText(
                      text: widget.Product.category.toString(),
                      textColor: Appcolors.blackcolor),
                ],
              ),
            ),
            Row(
              children: [
                CustomText(
                  text: 'Price:',
                  textColor: Appcolors.depbluecolor,
                  styleType: TextStyleType.TITLE,
                ),
                SizedBox(
                  width: size.width / 60,
                ),
                CustomText(
                    styleType: TextStyleType.SUBTITLE,
                    text: widget.Product.price.toString(),
                    textColor: Appcolors.blackcolor),
              ],
            ),
            Spacer(),
            Container(
              width: size.width / 1,
              height: size.height / 15,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Appcolors.blackcolor,
                    offset: Offset(1, 1),
                    blurRadius: 1,
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 15)
              ], borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolors.depbluecolor),
                      onPressed: () {
                        // CartService().addToCart(model: , qty: controller.qty.value)
                      },
                      child: CustomText(
                        text: 'Add To Cart',
                        textColor: Appcolors.whitcolor,
                      )),
                  Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Appcolors.depbluecolor),
                      onPressed: () {
                        // CartService().removeFromCartList();
                      },
                      child: Icon(
                        color: Appcolors.whitcolor,
                        Icons.add,
                      )),
                  CustomText(text: '1'),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Appcolors.depbluecolor),
                      onPressed: () {
                        CartService().addToCart(
                            model: widget.Product, qty: controller.qty.value);
                      },
                      child: Icon(
                        color: Appcolors.whitcolor,
                        Icons.minimize,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
