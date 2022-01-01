import 'package:backend_to_ui_parser/attribute_parsers/padding_parser.dart';
import 'package:flutter/material.dart';

import '../parser/parser.dart';

class PaddingParser {
  PaddingParser._();

  static getPadding(content) {
    return Padding(
      padding: content.containsKey('padding')
          ? PaddingMethodParser.getPadding(content['padding'].toString())
          : null,
      child: content.containsKey('child') ? Parser.parse(content['child'], alreadyParsed: true) : null,
    );
  }
}
