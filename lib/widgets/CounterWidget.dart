import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterWidget extends StatefulWidget {
  final String _title;

  const CounterWidget(this._title);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget._title,
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text("-"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      flex: 1,
    );
    ;
  }
}
