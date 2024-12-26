import 'package:flutter/material.dart';

enum TextStyleType {
  TITLE,
  SUBTITLE,
  BODY,
  SMALL,
  CUSTOM,
}

class CustomText extends StatelessWidget {
  final String text;
  final TextStyleType? styleType;
  final Color? textColor;
  final int? maxLine;
  final FontWeight? fontWeight;
  final double? fontSize;

  const CustomText({
    super.key,
    required this.text,
    this.styleType = TextStyleType.BODY,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Text(
      text,
      style: getStyle(size),
      maxLines: maxLine,
      overflow: TextOverflow.clip,
    );
  }

  TextStyle getStyle(Size size) {
    TextStyle result = TextStyle();

    switch (styleType) {
      case TextStyleType.TITLE:
        result = TextStyle(
          fontSize: size.width / 15,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: textColor,
        );
        break;
      case TextStyleType.SUBTITLE:
        result = TextStyle(
          fontSize: size.width / 20,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;
      case TextStyleType.BODY:
        result = TextStyle(
          fontSize: size.width / 28,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;
      case TextStyleType.SMALL:
        result = TextStyle(
          fontSize: size.width / 35,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;
      case TextStyleType.CUSTOM:
        result = TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;

      default:
        result = TextStyle(
            fontSize: size.width / 28,
            fontWeight: FontWeight.normal,
            color: textColor);
        break;
    }

    return result;
  }
}
