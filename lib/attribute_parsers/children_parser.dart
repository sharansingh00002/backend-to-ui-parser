import 'dart:convert';
import 'package:backend_to_ui_parser/parser/parser.dart';
import 'package:flutter/material.dart';

class ChildrenParser{
  static getChildren(children) {
    if(children == null) return [Container()];
    List<Widget> childrenList = List.empty(growable: true);
    children.forEach((element){
      Widget widget = Parser.parse(element, alreadyParsed: true);
      childrenList.add(widget);
    });
    return childrenList;
  }
}