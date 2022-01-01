import 'dart:convert';
import 'package:flutter/material.dart';

mixin PaddingMethodParser{
  static getPadding(String paddingString) {
    EdgeInsets? padding;
    String paddingCase = paddingString.substring((paddingString.indexOf('EdgeInsets.') + 11));
    if (paddingCase.contains("all")) {
      paddingCase = paddingCase.replaceAll("all(", "").replaceAll(")", "");
      padding = EdgeInsets.all(double.parse(paddingCase));
    } else if (paddingCase.contains("only")) {
      paddingCase = paddingCase.replaceAll("only(", "").replaceAll(")", "");
      paddingCase = paddingCase.replaceAll("top", "\"top\"").replaceAll(
          "bottom", "\"bottom\"");
      paddingCase = paddingCase.replaceAll("left", "\"left\"").replaceAll(
          "right", "\"right\"");
      var insetsRaw = '''{$paddingCase}''';
      Map<String, dynamic> insetsValue = jsonDecode(insetsRaw);
      padding = EdgeInsets.only(
        top: (double.parse("${insetsValue["top"] ?? 0.0}")),
        bottom: (double.parse("${insetsValue["bottom"] ?? 0.0}")),
        left: (double.parse("${insetsValue["left"] ?? 0.0}")),
        right: (double.parse("${insetsValue["right"] ?? 0.0}")),
      );
    } else if (paddingCase.contains("symmetric")){

      paddingCase = paddingCase.replaceAll("only(", "").replaceAll(")", "");
      paddingCase = paddingCase.replaceAll("vertical", "\"vertical\"").replaceAll(
          "horizontal", "\"horizontal\"");
      var insetsRaw = '''{$paddingCase}''';
      Map<String, dynamic> insetsValue = jsonDecode(insetsRaw);
      padding = EdgeInsets.symmetric(
        horizontal: (double.parse("${insetsValue["horizontal"] ?? 0.0}")),
        vertical: (double.parse("${insetsValue["vertical"] ?? 0.0}")),
      );
    }
    return padding;
  }
}