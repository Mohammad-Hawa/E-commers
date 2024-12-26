
import 'package:e_commers/UI/Views/main_view/allproducts_view/allproducts_view.dart';
import 'package:e_commers/UI/Views/main_view/cart_views/cart_views.dart';
import 'package:e_commers/UI/Views/main_view/home_view/home_view.dart';
import 'package:e_commers/UI/Views/main_view/main_view_widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController();

  BottomNavigationEnum selectedView = BottomNavigationEnum.HOME;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: CustomNavigationBar(
        selected: selectedView,
        onTap: (selecteEnum, index) {
          setState(() {
            selectedView = selecteEnum;
          });
          // controller.animateToPage(index,
          //     duration: Duration(milliseconds: 50), curve: Curves.easeOutSine);
          controller.jumpToPage(
            index,
          );
        },
      ),
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            AllProducts(
              openDrawer: () {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
            HomeView(
              openDrawer: () {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
            CartViews(
              openDrawer: () {},
            ),
          ]),
    ));
  }
}
