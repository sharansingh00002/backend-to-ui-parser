import 'package:backend_to_ui_parser/attribute_parsers/children_parser.dart';
import 'package:flutter/material.dart';

class ListViewParser{
  ListViewParser._();

  static getListView(Map<String, dynamic> content) {
    return ListView(
      children: ChildrenParser.getChildren(content['children']),
      scrollDirection: (content["scrollDirection"]??"Axis.vertical").contains("vertical") ? Axis.vertical : Axis.horizontal,
      reverse: (content["reverse"] != null && content["reverse"].toString().contains("true")),
    );
  }
}
