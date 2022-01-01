import 'package:backend_to_ui_parser/mixins/padding_mixin.dart';
import 'package:flutter/material.dart';

import '../parser/parser.dart';

class PaddingParser
    with PaddingMixin {
  PaddingParser._();

  static getPadding(content) {
    return Padding(
      padding: content.containsKey('padding')
          ? PaddingMixin.getPadding(content['padding'].toString())
          : null,
      child: content.containsKey('child') ? Parser.parse(content['child'], alreadyParsed: true) : null,
    );
  }
}
