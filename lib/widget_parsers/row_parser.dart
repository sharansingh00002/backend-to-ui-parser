import 'package:backend_to_ui_parser/common_property_parsers/axis_alignment_parser.dart';
import 'package:backend_to_ui_parser/common_property_parsers/children_parser.dart';
import 'package:flutter/material.dart';

import '../parser/parser.dart';

class RowParser{
  RowParser._();

  static getRow(Map<String, dynamic> content) {
    return Row(
      children: ChildrenParser.getChildren(content['children']),
      mainAxisAlignment: (content.containsKey("mainAxisAlignment") ? AxisAlignmentParser.getAlignment(content["mainAxisAlignment"].toString()) : MainAxisAlignment.start),
      crossAxisAlignment: (content.containsKey("crossAxisAlignment") ? AxisAlignmentParser.getAlignment(content["crossAxisAlignment"].toString()) : CrossAxisAlignment.center),
    );
  }
}
