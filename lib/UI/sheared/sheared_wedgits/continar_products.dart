import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/sheared/custom_wedgits/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ContinarProduct extends StatelessWidget {
  final String? image;
  final String? tital;
  final double? price;

  const ContinarProduct(
      {super.key, this.image, required this.tital, this.price});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsetsDirectional.only(top: size.width / 10),
              width: size.width / 2.1,
              height: size.width / 1.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Appcolors.greycolor, width: 3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(image ?? "", height: size.width / 5),
                  CustomText(
                      text: tital ?? "",
                      maxLine: 2,
                      styleType: TextStyleType.SMALL),
                  Row(
                    children: [
                      CustomText(
                          text: 'Price :',
                          textColor: Appcolors.depbluecolor,
                          styleType: TextStyleType.SUBTITLE),
                      CustomText(
                        text: price.toString(),
                        styleType: TextStyleType.SUBTITLE,
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: size.width / 10,
              child: Container(
                width: size.width / 2.5,
                height: size.width / 17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolors.greycolor),
                child: RatingBar.builder(
                  initialRating: 5,
                  minRating: 2,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding:
                      EdgeInsetsDirectional.only(start: size.width / 55),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Appcolors.depbluecolor,
                    size: 20,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                  itemSize: size.width / 18,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
