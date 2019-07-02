import 'package:flutter/material.dart';
import 'book.dart';
import 'second_Screen.dart';
import 'first_screen.dart';

void main() {
  return runApp(

    MaterialApp(
          initialRoute: 'first',
          routes: {
            'first' : (context) => firstscreen(),
            'second' : (context) => SecondScrenn(),
          },
      home: firstscreen(),

    ),
  );
}

