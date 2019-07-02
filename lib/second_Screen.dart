import 'package:flutter/material.dart';
import 'main.dart';
import 'package:first_app/second_Screen.dart';
class SecondScrenn extends StatefulWidget {
  @override
  _SecondScrennState createState() => _SecondScrennState();
}

class _SecondScrennState extends State<SecondScrenn> {
  String title;
  String detail;
  String dropdownValue = "tari5";
  String categ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                title=value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                detail=value;
              },
            ),
//            DropdownButton(
//              value: dropdownValue,
//              onChanged: (String newValue) {
//                setState(() {
//                  categ =newValue;
//                });
//              },
//              items: cat.map<DropdownMenuItem<String>>((String value) {
//                return DropdownMenuItem<String>(
//                  value: value,
//                  child: Text(value),
//                );
//              }).toList(),
//            ),
          ],

        ),
      ),
    );
  }
}

