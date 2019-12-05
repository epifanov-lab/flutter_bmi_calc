import 'package:bmi_calc/widgets/CounterWidget.dart';
import 'package:bmi_calc/widgets/HeightSlider.dart';
import 'package:bmi_calc/widgets/IconTextBox.dart';
import 'package:flutter/material.dart';

const PADDING = 16.0;

var appbar = AppBar(
  title: Text("BMI CALCULATOR"),
);

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: Scaffold(
      appBar: appbar,
      body: MainWidget(),
    ),
  ));
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: PADDING),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(width: PADDING),
                IconTextBox("MALE", "images/male.svg"),
                SizedBox(width: PADDING),
                IconTextBox("FEMALE", "images/female.svg"),
                SizedBox(width: PADDING),
              ],
            ),
          ),
          SizedBox(height: PADDING),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PADDING),
            child: HeightSlider(),
          )),
          SizedBox(height: PADDING),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(width: PADDING),
                CounterWidget("WEIGHT"),
                SizedBox(width: PADDING),
                CounterWidget("AGE"),
                SizedBox(width: PADDING),
              ],
            ),
          ),
          SizedBox(height: PADDING),
        ],
      ),
    );
  }
}
