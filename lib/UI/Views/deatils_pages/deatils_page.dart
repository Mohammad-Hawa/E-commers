import 'package:e_commers/UI/Views/deatils_pages/deatils_controller.dart';
import 'package:e_commers/UI/sheared/custom_wedgits/custom_text.dart';
import 'package:e_commers/core/data/models/product_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class DeatilsPage extends StatefulWidget {
  final ProductModel productModel;
  const DeatilsPage({super.key, required this.productModel});

  @override
  State<DeatilsPage> createState() => _DeatilsPageState();
}

class _DeatilsPageState extends State<DeatilsPage> {
  DeatilsController controller = Get.put(DeatilsController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomText(text: widget.productModel.title.toString()),
            Image.network(widget.productModel.image ?? ''),
            Row(
              children: [
                CustomText(text: 'Description:'),
                RatingBar.builder(
                  itemBuilder: (context, index) {
                    return Icon(Icons.star_half_sharp);
                  },
                  itemCount: 5,
                  onRatingUpdate: (value) {
                    widget.productModel.rating ?? '';
                  },
                )
              ],
            ),
            CustomText(
              text: widget.productModel.description ?? '',
              maxLine: 7,
            ),
            Row(
              children: [
                CustomText(
                  text: 'Category:',
                ),
                CustomText(
                  text: widget.productModel.category ?? '',
                ),
              ],
            ),
            Row(
              children: [
                CustomText(
                  text: 'Price:',
                ),
                CustomText(
                  text: widget.productModel.price.toString(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
