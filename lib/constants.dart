import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double defaultPadding = 16.0;

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

Color light = Color(0xBF2D2E36);
// FF = 100% opacity
Color darkBlue = Color(0xFF2D2E36);
Color bluePurple = Color(0xFF34395E);
Color purple = Color(0xFF6777EF);

TextStyle title =
    TextStyle(color: darkBlue, fontWeight: FontWeight.w600, fontSize: 28);
// medium = w500
TextStyle text =
    TextStyle(color: light, fontWeight: FontWeight.w500, fontSize: 11);
// regular = w400
TextStyle desc =
    TextStyle(color: light, fontWeight: FontWeight.w400, fontSize: 12);

TextStyle news =  TextStyle(color: darkBlue, fontWeight: FontWeight.w400, fontSize: 12);
