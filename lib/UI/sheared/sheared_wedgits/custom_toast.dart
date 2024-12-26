import 'package:bot_toast/bot_toast.dart';
import 'package:e_commers/UI/sheared/colors.dart';
import 'package:e_commers/UI/sheared/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum MessageType {
  INFO,
  ERROR,
  SUCCESS,
  ALERT,
}

class CustomToast {
  static showMessage({
    required String message,
    MessageType? type = MessageType.INFO,
  }) {
    String imageName = 'info';
    Color shadowColor = Appcolors.bluecolor;


    switch (type) {
      case MessageType.INFO:
        imageName = 'info';
        shadowColor = Appcolors.bluecolor;
        break;
      case MessageType.ERROR:
        imageName = 'rejected-01';
        shadowColor = Appcolors.redcolor;
        break;
      case MessageType.SUCCESS:
        imageName = 'approved1-01';
        shadowColor = Appcolors.greencolor;
        break;
      case MessageType.ALERT:
        imageName = 'warning';
        shadowColor = Appcolors.yellowcolor;
        break;

      default:
        imageName = 'info';
        shadowColor = Appcolors.bluecolor;
        break;
    }

    BotToast.showCustomText(
        duration: Duration(seconds: 15),
        toastBuilder: (value) {
          return Card(
            elevation: 10,
            shadowColor: shadowColor,
            margin: EdgeInsets.all(screenWidth(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/svgs/$imageName.svg',
                  width: screenWidth(10),
                  height: screenWidth(10),
                ),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenWidth(18), color: Appcolors.blackcolor),
                )
              ],
            ),
          );
        });
  }
}
