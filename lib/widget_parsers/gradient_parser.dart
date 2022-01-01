import 'dart:convert';
import 'package:flutter/material.dart';

import '../mixins/alignment_mixin.dart';

class GradientParser with AlignmentMixin {
  GradientParser._();

  static getGradient(Map<String, dynamic> gradientMap) {
    Gradient? gradient;
    if (gradientMap.keys.contains("LinearGradient")) {
      List<Color> colorsList = List.empty(growable: true);
      gradientMap["LinearGradient"]["colors"].forEach((element) {
        colorsList.add(Color(int.parse(element.toString())));
      });
      gradient = LinearGradient(
          begin: AlignmentMixin.getAlignment(
              gradientMap["LinearGradient"]['begin'] ?? "Alignment.centerLeft"),
          end: AlignmentMixin.getAlignment(
              gradientMap["LinearGradient"]['end'] ?? "Alignment.centerRight"),
          colors: colorsList);
    } else if(gradientMap.keys.contains("RadialGradient")){
      List<Color> colorsList = List.empty(growable: true);
      gradientMap["RadialGradient"]['colors'].forEach((element) {
        colorsList.add(Color(int.parse(element.toString())));
      });
      gradient = RadialGradient(
          center: AlignmentMixin.getAlignment(
              gradientMap["RadialGradient"]['center'] ?? "Alignment.center"),
          radius: double.parse('${gradientMap["RadialGradient"]['radius'] ?? '0.5'}'),
          colors: colorsList);
    }
    return gradient;
  }
}
