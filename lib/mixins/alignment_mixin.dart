import 'package:flutter/material.dart';

mixin AlignmentMixin{
  static getAlignment(String alignmentString) {
    alignmentString = alignmentString.replaceAll("Alignment.", "");
    Alignment? alignment;
    switch (alignmentString) {
      case 'topLeft':
        alignment = Alignment.topLeft;
        break;
      case 'topCenter':
        alignment = Alignment.topCenter;
        break;
      case 'topRight':
        alignment = Alignment.topRight;
        break;
      case 'centerLeft':
        alignment = Alignment.centerLeft;
        break;
      case 'center':
        alignment = Alignment.center;
        break;
      case 'centerRight':
        alignment = Alignment.centerRight;
        break;
      case 'bottomLeft':
        alignment = Alignment.bottomLeft;
        break;
      case 'bottomCenter':
        alignment = Alignment.bottomCenter;
        break;
      case 'bottomRight':
        alignment = Alignment.bottomRight;
        break;
    }
    return alignment;
  }
}