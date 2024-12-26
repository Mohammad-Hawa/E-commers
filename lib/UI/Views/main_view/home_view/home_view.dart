import 'package:e_commers/UI/Views/main_view/deatils_product/deatils_product.dart';
import 'package:e_commers/UI/Views/main_view/home_view/home_controller.dart';
import 'package:e_commers/UI/Views/main_view/home_view/home_scrollcontinar.dart';
import 'package:e_commers/UI/sheared/sheared_wedgits/continar_products.dart';
import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/sheared/custom_wedgits/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class AllProducts extends StatefulWidget {
  final Function openDrawer;
  const AllProducts({super.key, required this.openDrawer});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  AllcategoryController controller = Get.put(AllcategoryController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(
      () {
        return SafeArea(
          child: Scaffold(
            body: ListView(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: size.width / 10,
                      start: size.width / 10,
                      bottom: size.width / 10),
                  child: CustomText(
                    text: 'Categories',
                    styleType: TextStyleType.TITLE,
                  ),
                ),
                SizedBox(
                    width: size.width / 1,
                    height: size.height / 10,
                    child: ListView.builder(
                      itemCount: controller.cate.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // تحديد العنصر المنقر
                            controller.getAllProduct(
                                category: controller.cate[index]);
                            // تغيير اللون
                            controller.selected.value = controller.cate[index];
                          },
                          child: ScrolContinar(
                            color: controller.selected.value ==
                                    controller.cate[index]
                                ? Appcolors.depbluecolor
                                : Appcolors.whitcolor,
                            Text: controller.cate[index].toString(),
                          ),
                        );
                      },
                    )),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: size.width / 10,
                      start: size.width / 10,
                      bottom: size.width / 10),
                  child: CustomText(
                    text: 'Products',
                    styleType: TextStyleType.TITLE,
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
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.7, crossAxisCount: 2),
                          itemCount: controller.productList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return controller.productList.length == 0
                                ? SpinKitCircle(
                                    color: Appcolors.blackcolor,
                                  )
                                : InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return DeatilsProduct(
                                          Product:
                                              controller.productList[index],
                                        );
                                      })));
                                      //  controller.productdeatils(index);
                                    },
                                    child: ContinarProduct(
                                      tital:
                                          controller.productList[index].title,
                                      image:
                                          controller.productList[index].image,
                                      price:
                                          controller.productList[index].price,
                                    ),
                                  );
                          },
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
