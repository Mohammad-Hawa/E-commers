import 'package:e_commers/UI/sheared/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String texthint;
  final TextEditingController? controler;
  final String? Function(String?)? validator;
  const CustomTextField({super.key, required this.texthint,  this.controler, this.validator, });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller:controler ,
      validator:validator ,
      decoration: InputDecoration(
        hintText: texthint,
        hintStyle:TextStyle(color: Appcolors.whitcolor),
         filled: true,
        fillColor: Appcolors.greycolor,
        errorBorder:OutlineInputBorder(    
        borderSide: BorderSide(color: Appcolors.greycolor),
      ),
          enabledBorder: OutlineInputBorder(    
        borderSide: BorderSide(color: Appcolors.greycolor),
      ),
      focusedBorder: OutlineInputBorder( borderSide: BorderSide(color: Appcolors.greycolor),)
      
      ),
    );
  }
}
