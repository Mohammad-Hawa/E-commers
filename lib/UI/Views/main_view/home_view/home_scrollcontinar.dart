import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/sheared/custom_wedgits/custom_text.dart';
import 'package:flutter/material.dart';

class ScrolContinar extends StatelessWidget {
  final String Text;
  // final Function onTap;
  final Color color;
  const ScrolContinar({
    super.key,
    required this.Text,
    // required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsetsDirectional.only(start: size.width / 15),
      child: Container(
        width: size.width / 3,
        height: size.height / 20,
        alignment: Alignment.center,
        child: CustomText(text: Text, styleType: TextStyleType.SUBTITLE),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          border:
              Border.all(color: Appcolors.greycolor, width: size.width / 160),
        ),
      ),
    );
  }
}
