import 'dart:convert';
import 'package:flutter/material.dart';

import '../mixins/alignment_mixin.dart';

class GradientParser with AlignmentMixin {
  GradientParser._();

  static getGradient(String gradientString) {
    Gradient? gradient;
    gradientString = gradientString.trim();
    if (gradientString.contains("LinearGradient")) {
      gradientString =
          gradientString.replaceAll("LinearGradient(", "").replaceAll(")", "");
      var rawString = '''{${gradientString.replaceAll("*", "\"")}}''';
      Map<String, dynamic> gradientsValue = jsonDecode(rawString);
      List<Color> colorsList = List.empty(growable: true);
      gradientsValue['colors'].forEach((element) {
        colorsList.add(Color(int.parse(element.toString())));
      });
      gradient = LinearGradient(
          begin: AlignmentMixin.getAlignment(
              gradientsValue['begin'] ?? "Alignment.centerLeft"),
          end: AlignmentMixin.getAlignment(
              gradientsValue['end'] ?? "Alignment.centerRight"),
          colors: colorsList);
    }else if(gradientString.contains("RadialGradient")){
      gradientString =
          gradientString.replaceAll("RadialGradient(", "").replaceAll(")", "");
      var rawString = '''{${gradientString.replaceAll("*", "\"")}}''';
      Map<String, dynamic> gradientsValue = jsonDecode(rawString);
      List<Color> colorsList = List.empty(growable: true);
      gradientsValue['colors'].forEach((element) {
        colorsList.add(Color(int.parse(element.toString())));
      });
      gradient = RadialGradient(
          center: AlignmentMixin.getAlignment(
              gradientsValue['center'] ?? "Alignment.center"),
          radius: double.parse('${gradientsValue['radius'] ?? '0.5'}'),
          colors: colorsList);
    }
    return gradient;
  }
}
