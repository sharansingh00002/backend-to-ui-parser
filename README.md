# Json/Backend response to UI parser

A new Flutter project to parse Json data to render UI widgets


## Parsers

```
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
    "children": [{"Container": {"color": "0xffff11ff", "height": 150, "width": 150}},
    {"Padding": {"padding": "EdgeInsets.only(top: 40)",
    "child": {"Text": {"text": "helllooo", 
    "style": {"fontSize": 24, "color": "0xffffffff", "fontWeight": "bold"}}}}}]
  }},
    "color": "0xffff11ff",
    "height": "300",
    "width": "300",
    "borderRadius": 32,
    "alignment": "Alignment.center",
    "gradient": {
    "LinearGradient": {"colors": ["0xff11ffff", "0xffff11ff"],
     "begin": "Alignment.topLeft",
      "end": "Alignment.bottomRight"}} 
  }
  }
  }
}'''

Use Parse to parse above data - Parser.parse(jsonData)
```

Above code renders the following widget 

<img width="410" alt="Screenshot 2022-01-01 at 1 31 52 PM" src="https://user-images.githubusercontent.com/40237701/147846586-ab143c8b-7a84-4ae6-b153-28e013ea6267.png">

