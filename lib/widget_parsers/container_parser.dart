import 'package:backend_to_ui_parser/attribute_parsers/alignment_parser.dart';
import 'package:backend_to_ui_parser/attribute_parsers/padding_parser.dart';
import 'package:backend_to_ui_parser/widget_parsers/gradient_parser.dart';
import 'package:flutter/material.dart';

import '../parser/parser.dart';

class ContainerParser
    implements GradientParser {
  ContainerParser._();

  static getContainer(content) {
    return Container(
      alignment: content.containsKey('alignment')
          ? AlignmentParser.getAlignment(content['alignment'].toString())
          : null,
      padding: content.containsKey('padding')
          ? PaddingMethodParser.getPadding(content['padding'].toString())
          : null,
      width: content.containsKey('width')
          ? double.parse(content['width'].toString())
          : null,
      height: content.containsKey('height')
          ? double.parse(content['width'].toString())
          : null,
      decoration: BoxDecoration(
        color: content.containsKey('color')
            ? Color(int.parse(content['color'].toString()))
            : null,
        border: Border.all(
          color: content.containsKey('borderColor')
              ? Color(int.parse(content['borderColor'].toString()))
              : Colors.transparent,
          width: content.containsKey('borderWidth')
              ? double.parse(content['borderWidth'].toString())
              : 1,
        ),
        borderRadius: BorderRadius.circular(double.parse(
            '${content.containsKey('borderRadius') ? content['borderRadius'].toString() : '0.0'}')),
        gradient: content.containsKey('gradient')
            ? GradientParser.getGradient(content['gradient'])
            : null,
      ),
      child: content.containsKey('child') ? Parser.parse(content['child'], alreadyParsed: true) : null,
    );
  }
}
