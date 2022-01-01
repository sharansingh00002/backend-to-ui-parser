import 'dart:convert';
import 'package:flutter/material.dart';

class TextStyleParser {
  static getTextStyle(textStyle) {
    TextStyle? style;
    style = TextStyle(
      fontSize: textStyle.containsKey('fontSize')
          ? double.parse(textStyle['fontSize'].toString())
          : 16,
      fontWeight: (textStyle['fontWeight'].toString().contains("semi")
          ? FontWeight.w600
          : (textStyle['fontWeight'].toString().contains("bold")
          ? FontWeight.bold
          : FontWeight.normal)),
      color: textStyle.containsKey("color") ? Color(int.parse(textStyle["color"].toString())) : Colors.black,
    );
    return style;
  }
}
