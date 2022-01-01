import 'package:backend_to_ui_parser/attribute_parsers/alignment_parser.dart';
import 'package:flutter/material.dart';

class GradientParser {
  GradientParser._();

  static getGradient(Map<String, dynamic> gradientMap) {
    Gradient? gradient;
    if (gradientMap.keys.contains("LinearGradient")) {
      List<Color> colorsList = List.empty(growable: true);
      gradientMap["LinearGradient"]["colors"].forEach((element) {
        colorsList.add(Color(int.parse(element.toString())));
      });
      gradient = LinearGradient(
          begin: AlignmentParser.getAlignment(
              gradientMap["LinearGradient"]['begin'] ?? "Alignment.centerLeft"),
          end: AlignmentParser.getAlignment(
              gradientMap["LinearGradient"]['end'] ?? "Alignment.centerRight"),
          colors: colorsList);
    } else if(gradientMap.keys.contains("RadialGradient")){
      List<Color> colorsList = List.empty(growable: true);
      gradientMap["RadialGradient"]['colors'].forEach((element) {
        colorsList.add(Color(int.parse(element.toString())));
      });
      gradient = RadialGradient(
          center: AlignmentParser.getAlignment(
              gradientMap["RadialGradient"]['center'] ?? "Alignment.center"),
          radius: double.parse('${gradientMap["RadialGradient"]['radius'] ?? '0.5'}'),
          colors: colorsList);
    }
    return gradient;
  }
}
