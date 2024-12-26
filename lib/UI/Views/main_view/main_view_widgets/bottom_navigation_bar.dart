import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/Views/main_view/main_view_widgets/nav_item.dart';
import 'package:flutter/material.dart';

enum BottomNavigationEnum {
  HOME,
  PRODUCTS,
  CART,
}

class CustomNavigationBar extends StatelessWidget {
  final Function(BottomNavigationEnum, int) onTap;
  final BottomNavigationEnum selected;
  const CustomNavigationBar(
      {super.key, required this.onTap, required this.selected});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        color: Appcolors.whitcolor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItme(
              image: 'assets/images/svgs/products-svgrepo-com.svg',
              isSelected: selected == BottomNavigationEnum.PRODUCTS,
              onTap: () {
                onTap(BottomNavigationEnum.PRODUCTS, 1);
              }),
          NavItme(
              image: 'assets/images/svgs/home-svgrepo-com.svg',
              isSelected: selected == BottomNavigationEnum.HOME,
              onTap: () {
                onTap(BottomNavigationEnum.HOME, 0);
              }),
          NavItme(
              image: 'assets/images/svgs/cart-svgrepo-com.svg',
              isSelected: selected == BottomNavigationEnum.CART,
              onTap: () {
                onTap(BottomNavigationEnum.CART, 2);
              }),
        ],
      ),
    );
  }
}
