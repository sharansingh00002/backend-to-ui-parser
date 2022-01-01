import 'package:flutter/material.dart';

mixin AxisAlignmentMixin {
  static getAlignment(String alignmentString) {
    bool isMainAxis = alignmentString.contains("MainAxisAli");
    alignmentString = alignmentString
        .replaceAll("MainAxisAlignment.", "")
        .replaceAll("CrossAxisAlignment.", "");
    var alignment;

    switch (alignmentString) {
      case 'center':
        alignment =
            isMainAxis ? MainAxisAlignment.center : CrossAxisAlignment.center;
        break;
      case 'start':
        alignment =
            isMainAxis ? MainAxisAlignment.start : CrossAxisAlignment.start;
        break;
      case 'spaceBetween':
        alignment = MainAxisAlignment.spaceBetween;
        break;
      case 'spaceAround':
        alignment = MainAxisAlignment.spaceAround;
        break;
      case 'spaceEvenly':
        alignment = MainAxisAlignment.spaceEvenly;
        break;
      case 'end':
        alignment = isMainAxis ? MainAxisAlignment.end : CrossAxisAlignment.end;
        break;
      case 'baseline':
        alignment = CrossAxisAlignment.baseline;
        break;
      case 'stretch':
        alignment = CrossAxisAlignment.stretch;
        break;
    }
    print("alignemnt iss $alignment");
    return alignment;
  }
}
