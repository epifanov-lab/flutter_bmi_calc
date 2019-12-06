import 'package:bmi_calc/page2.dart';
import 'package:bmi_calc/widgets/CounterWidget.dart';
import 'package:bmi_calc/widgets/HeightSlider.dart';
import 'package:bmi_calc/widgets/IconTextBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class PageCalculator extends StatefulWidget {
  static const String routeName = "/";

  @override
  _PageCalculatorState createState() => _PageCalculatorState();
}

class _PageCalculatorState extends State<PageCalculator> {
  int gender = 0;
  int height = 0;
  int weight = 0;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: Key("page_1"),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 0;
                      });
                    },
                    child: IconTextBox(
                        "MALE",
                        EdgeInsets.fromLTRB(
                            PADDING, PADDING, PADDING / 2, PADDING),
                        SvgPicture.asset(
                          "images/male.svg",
                          color: Colors.white,
                          width: 48.0,
                          height: 48.0,
                          semanticsLabel: "male",
                        ),
                        gender == 0
                            ? Theme.of(context).accentColor
                            : Theme.of(context).cardColor),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 1;
                      });
                    },
                    child: IconTextBox(
                        "FEMALE",
                        EdgeInsets.fromLTRB(
                            PADDING / 2, PADDING, PADDING, PADDING),
                        SvgPicture.asset(
                          "images/female.svg",
                          color: Colors.white,
                          width: 48.0,
                          height: 48.0,
                          semanticsLabel: "female",
                        ),
                        gender == 1
                            ? Theme.of(context).accentColor
                            : Theme.of(context).cardColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: HeightSlider(
              (double newVal) {
                height = newVal.toInt();
              },
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                CounterWidget(
                    "WEIGHT",
                    EdgeInsets.fromLTRB(PADDING, PADDING, PADDING / 2, PADDING),
                    (int val) => weight = val),
                CounterWidget(
                    "AGE",
                    EdgeInsets.fromLTRB(PADDING / 2, PADDING, PADDING, PADDING),
                    (int val) => age = val),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).accentColor),
            margin: EdgeInsets.fromLTRB(PADDING, 0, PADDING, PADDING),
            width: double.infinity,
            height: 60,
            child: RaisedButton(
              onPressed: () {
                double bmi = weight / (height * height / 10000);
                Navigator.pushNamed(
                  context,
                  PageResult.routeName,
                  arguments: bmi,
                );
              },
              color: Theme.of(context).accentColor,
              child: Center(
                child: Text(
                  "CALCULATE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
