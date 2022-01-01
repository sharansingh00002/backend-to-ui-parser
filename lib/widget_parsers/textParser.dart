import 'package:backend_to_ui_parser/attribute_parsers/text_style_parser.dart';
import 'package:flutter/material.dart';

import '../parser/parser.dart';

class TextParser with TextStyleParser {
  TextParser._();

  static getText(content) {
    return Text(
      content['text'],
      style: content.containsKey('style')
          ? TextStyleParser.getTextStyle(content['style'])
          : TextStyle(fontSize: 16, color: Colors.black),
    );
  }
}
