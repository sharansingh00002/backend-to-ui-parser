import 'dart:convert';
import 'package:flutter/material.dart';

class TextStyleParser {
  static getTextStyle(String textStyle) {
    TextStyle? style;
    textStyle = textStyle.trim();
    if (textStyle.contains("TextStyle")) {
      textStyle =
          textStyle.replaceAll("TextStyle(", "").replaceAll(")", "").trim();
      var rawString = '''{${textStyle.replaceAll("*", "\"")}}''';
      Map<String, dynamic> dataMap = jsonDecode(rawString);
      style = TextStyle(
          fontSize: dataMap.containsKey('fontSize')
              ? double.parse(dataMap['fontSize'].toString())
              : 16,
          fontWeight: (dataMap['fontWeight'].toString().contains("semi")
              ? FontWeight.w600
              : (dataMap['fontWeight'].toString().contains("bold")
                  ? FontWeight.bold
                  : FontWeight.normal)),
          color: dataMap.containsKey("color") ? Color(int.parse(dataMap["color"].toString())) : Colors.black,
      );
    }
    return style;
  }
}
