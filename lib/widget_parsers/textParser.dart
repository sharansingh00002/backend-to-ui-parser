import 'package:backend_to_ui_parser/mixins/padding_mixin.dart';
import 'package:backend_to_ui_parser/mixins/text_style_mixin.dart';
import 'package:flutter/material.dart';

import '../parser/parser.dart';

class TextParser with TextStyleMixin {
  TextParser._();

  static getText(content) {
    return Text(
      content['text'],
      style: content.containsKey('style')
          ? TextStyleMixin.getTextStyle(content['style'])
          : TextStyle(fontSize: 16, color: Colors.black),
    );
  }
}
