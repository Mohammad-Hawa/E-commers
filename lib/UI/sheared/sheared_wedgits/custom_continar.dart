

import 'package:flutter/material.dart';

class ContinarAuth extends StatelessWidget {
  final String textcon;
  final Function onTap;
  const ContinarAuth({super.key, required this.textcon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          alignment: Alignment.center,
          // margin:EdgeInsetsDirectional.only(end:100 ,start:100 ) ,
          width: size.width / 1,
          height: size.height / 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // gradient: LinearGradient(
            //   begin: Alignment.bottomLeft,
            //   end: Alignment.bottomRight,
            //   colors: [
            //     Appcolors.Purpalcolor,
            //     Appcolors.dpurpalcolor,
            //   ],
            // ),
          ),
          child: Text(
            textcon,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ));
  }
}
