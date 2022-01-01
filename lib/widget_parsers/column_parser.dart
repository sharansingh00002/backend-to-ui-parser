import 'package:backend_to_ui_parser/mixins/axis_alignment_mixin.dart';
import 'package:flutter/material.dart';

import '../parser/parser.dart';

class ColumnParser with AxisAlignmentMixin{
  ColumnParser._();

  static getColumn(Map<String, dynamic> content) {
    List<Widget> childrenList = List.empty(growable: true);
    if(content.containsKey('children')){
      content['children'].forEach((element){
        Widget widget = Parser.parse(element, alreadyParsed: true);
        childrenList.add(widget);
      });
    }
    return Column(
      children: childrenList,
      mainAxisAlignment: (content.containsKey("mainAxisAlignment") ? AxisAlignmentMixin.getAlignment(content["mainAxisAlignment"].toString()) : MainAxisAlignment.start),
      crossAxisAlignment: (content.containsKey("crossAxisAlignment") ? AxisAlignmentMixin.getAlignment(content["crossAxisAlignment"].toString()) : CrossAxisAlignment.center),
    );
  }
}
