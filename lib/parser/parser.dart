import 'dart:convert';

import 'package:backend_to_ui_parser/widget_parsers/column_parser.dart';
import 'package:backend_to_ui_parser/widget_parsers/container_parser.dart';
import 'package:backend_to_ui_parser/widget_parsers/listview_parser.dart';
import 'package:backend_to_ui_parser/widget_parsers/padding_parser.dart';
import 'package:backend_to_ui_parser/widget_parsers/row_parser.dart';
import 'package:backend_to_ui_parser/widget_parsers/textParser.dart';
import 'package:flutter/material.dart';

import '../widget_parsers/center_parser.dart';

class Parser {

  Parser._();

  static Widget parse(jsonData, {bool alreadyParsed = false}) {
    Map data = alreadyParsed ? jsonData : jsonDecode(jsonData);
    Widget widget = getWidget(
        data.keys.first.toString(), data[data.keys.first]);
    return widget;
  }

  static Widget getWidget(String widgetName, content) {
    Widget widget = Container();
    switch (widgetName) {
      case "Container":
        widget = ContainerParser.getContainer(content);
        break;
      case "Padding":
        widget = PaddingParser.getPadding(content);
        break;
      case "Center":
        widget = CenterParser.getCenter(content);
        break;
      case "Text":
        widget = TextParser.getText(content);
        break;
      case "Column":
        widget = ColumnParser.getColumn(content);
        break;
      case "Row":
        widget = RowParser.getRow(content);
        break;
      case "ListView":
        widget = ListViewParser.getListView(content);
        break;
    }
    return widget;
  }
}


