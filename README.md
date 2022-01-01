# backend_to_ui_parser

A new Flutter project create widgets from a json String file 


## Getting Started

Parsers added currently - 

Container
Padding
Center
Text
Column
Row
ListView
Gradient - Linear & Radial

Example code - 

Create a valid json String 

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

Use Parse to parse above data - Parser.parse(jsonData)

Above code renders the following widget 


<img width="399" alt="Screenshot 2022-01-01 at 1 15 36 PM" src="https://user-images.githubusercontent.com/40237701/147846363-a8545852-20e6-45da-b318-c5372259ae76.png">

