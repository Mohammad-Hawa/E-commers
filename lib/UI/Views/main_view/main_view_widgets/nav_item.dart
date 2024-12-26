import 'package:e_commers/UI/sheared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavItme extends StatelessWidget {
  final String image;
  final bool? isSelected;
  final Function onTap;
  const NavItme(
      {super.key,
      this.isSelected = false,
      required this.onTap,
      required this.image});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        child: SvgPicture.asset(
          image,
          width: size.width / 10,
          height: size.width / 10,
        
          // ignore: deprecated_member_use
          color: isSelected! ? Appcolors.depbluecolor : Appcolors.blackcolor,
        ),
      ),
    );
  }
}
