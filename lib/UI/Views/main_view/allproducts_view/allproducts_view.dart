import 'package:e_commers/UI/Views/main_view/deatils_product/deatils_product.dart';
import 'package:e_commers/UI/Views/main_view/home_view/home_controller.dart';
import 'package:e_commers/UI/sheared/sheared_wedgits/continar_products.dart';
import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/sheared/custom_wedgits/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required Null Function() openDrawer});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AllcategoryController controller = Get.put(AllcategoryController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: size.width / 8,
                start: size.width / 10,
              ),
              child: CustomText(
                text: 'Products',
                styleType: TextStyleType.TITLE,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: size.width / 30,
                  start: size.width / 17,
                  end: size.width / 17,
                  bottom: size.width / 10),
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Appcolors.blackcolor),
                  hintText: 'Searsh....',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(width: 1, color: Appcolors.greycolor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(width: 1, color: Appcolors.greycolor)),
                ),
              ),
            ),
            controller.productList.length == 0
                ? SpinKitCircle(
                    color: Appcolors.blackcolor,
                  )
                : SingleChildScrollView(
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.7, crossAxisCount: 2),
                      itemCount: controller.productList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return controller.productList.length == 0
                            ? SpinKitCircle(
                                color: Appcolors.blackcolor,
                              )
                            : InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return DeatilsProduct(
                                      Product: controller.productList[index],
                                    );
                                  })));
                                },
                                child: ContinarProduct(
                                  tital: controller.productList[index].title,
                                  image: controller.productList[index].image,
                                  price: controller.productList[index].price,
                                ),
                              );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
