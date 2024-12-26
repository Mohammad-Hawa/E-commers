import 'package:e_commers/UI/Views/main_view/cart_views/cart_service.dart';
import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/sheared/custom_wedgits/custom_text.dart';
import 'package:flutter/material.dart';

class CartViews extends StatefulWidget {
  const CartViews({super.key, required Null Function() openDrawer});

  @override
  State<CartViews> createState() => _CartViewsState();
}

class _CartViewsState extends State<CartViews> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: size.width / 10, top: size.width / 10),
            child: CustomText(text: 'Cart', styleType: TextStyleType.TITLE),
          ),
          SizedBox(
            height: size.height / 2,
            width: size.width / 1,
            child: ListView(
              children: [
                Container(
                  color: Colors.amber,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: size.width / 15, end: size.width / 15),
            child: Divider(color: Appcolors.bluecolor, thickness: 3),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: size.width / 15, end: size.width / 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: 'Sup Total :',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.bluecolor,
                    ),
                    CustomText(
                      text: '555',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                    CustomText(
                      text: 'Sp',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: size.width / 15, end: size.width / 15),
                  child: Divider(
                      color: Appcolors.bluecolor.withOpacity(0.2),
                      thickness: 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: 'Tax:',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.bluecolor,
                    ),
                    CustomText(
                      text: '555',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                    CustomText(
                      text: 'Sp',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: size.width / 15, end: size.width / 15),
                  child: Divider(
                      color: Appcolors.bluecolor.withOpacity(0.2),
                      thickness: 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: 'Delivery Fees:',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.bluecolor,
                    ),
                    CustomText(
                      text: 'Tax:',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                    CustomText(
                      text: 'Sp',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: size.width / 15, end: size.width / 15),
                  child: Divider(
                      color: Appcolors.bluecolor.withOpacity(0.2),
                      thickness: 3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: 'Total:',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.bluecolor,
                    ),
                    CustomText(
                      text: 'T',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                    CustomText(
                      text: 'Sp',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: Appcolors.blackcolor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: size.width / 15, end: size.width / 15),
            child: Divider(color: Appcolors.bluecolor, thickness: 3),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: size.width / 10, end: size.width / 10),
            child: Container(
              alignment: Alignment.center,
              width: size.width / 5,
              height: size.width / 10,
              child: Text('Placed Order'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolors.bluecolor),
            ),
          ),
          InkWell(
            onTap: () {
              CartService().clearCart();
            },
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: size.width / 2, end: size.width / 4),
              child: CustomText(
                  text: 'Empty Cart',
                  styleType: TextStyleType.BODY,
                  textColor: Appcolors.redcolor),
            ),
          )
        ],
      ),
    ));
  }
}
