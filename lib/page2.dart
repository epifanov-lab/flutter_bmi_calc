import 'package:flutter/cupertino.dart';

class PageResult extends StatelessWidget {
  static const String routeName = "/result";

  var arg;

  PageResult(double arg) {
    this.arg = arg;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          "YOUR BMI IS $arg",
        ),
      ),
    );
  }
}
