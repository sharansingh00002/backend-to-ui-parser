import 'package:flutter/material.dart';

import '../parser/parser.dart';

class CenterParser {
  CenterParser._();

  static getCenter(content) {
    return Center(
      child: content.containsKey('child') ? Parser.parse(content['child'], alreadyParsed: true) : null,
    );
  }
}
