import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconTextBox extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  final Widget icon;
  final Color bcg;

  IconTextBox(this.title, this.padding, this.icon, this.bcg);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: padding,
      height: double.infinity,
      decoration: BoxDecoration(
        color: bcg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          SizedBox(height: 8),
          Text(
            this.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
