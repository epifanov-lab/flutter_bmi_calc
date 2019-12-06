import 'package:bmi_calc/page1.dart';
import 'package:bmi_calc/page2.dart';
import 'package:bmi_calc/router.dart';
import 'package:flutter/material.dart';

const PADDING = 24.0;

var appbar = AppBar(
  title: Text("BMI CALCULATOR"),
);

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      accentColor: Colors.pink[200],
    ),
    home: Scaffold(
      appBar: appbar,
      body: PageCalculator(),
    ),
    onGenerateRoute: generateRoute,
  ));
}
