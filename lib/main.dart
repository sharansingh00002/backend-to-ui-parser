import 'dart:convert';

import 'package:flutter/material.dart';

import 'parser/parser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var jsonData = '''
{
  "Padding" : {
  "padding": "EdgeInsets.only(top: 40)",
  "child" : {
  "Container": {
    "child": {"Column": {
    "mainAxisAlignment": "MainAxisAlignment.center",
    "crossAxisAlignment": "CrossAxisAlignment.center",
    "children": [{"Container": {"color": "0xffff11ff", "height": 150, "width": 150}}, {"Text": {"text": "helllooo"}}]
  }},
    "color": "0xffff11ff",
    "height": "300",
    "width": "300",
    "padding": "EdgeInsets.only(top: 10)",
    "borderRadius": 32,
    "alignment": "Alignment.center",
    "gradient": {"LinearGradient": {"colors": ["0xff11ffff", "0xffff11ff"], "begin": "Alignment.topLeft", "end": "Alignment.bottomRight"}} 
  }
  }
  }
}''';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Parser.parse(jsonData),
      ),
    );
  }
}
