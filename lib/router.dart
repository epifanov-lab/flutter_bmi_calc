import 'package:bmi_calc/page1.dart';
import 'package:bmi_calc/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//todo routes enum

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PageCalculator.routeName:
      return MaterialPageRoute(builder: (context) => PageCalculator());
    case PageResult.routeName:
      var arg = settings.arguments;
      return MaterialPageRoute(builder: (context) => PageResult(arg));
    default:
      return MaterialPageRoute(builder: (context) => UndefinedView());
  }
}

class UndefinedView extends StatelessWidget {
  final String name;

  const UndefinedView({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Route for $name is not defined'),
      ),
    );
  }
}
