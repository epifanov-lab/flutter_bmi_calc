import 'package:bmi_calc/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterWidget extends StatefulWidget {
  final String _title;
  final EdgeInsets margin;
  final Function function;

  const CounterWidget(this._title, this.margin, this.function);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        margin: widget.margin,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10)),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget._title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "$_value",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 0,
                    buttonColor: Theme.of(context).accentColor,
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (_value > 0) _value--;
                          widget.function(_value);
                        });
                      },
                      padding: EdgeInsets.all(8),
                      shape: CircleBorder(),
                      elevation: 5,
                      child: Icon(
                        Icons.remove,
                        size: 36,
                      ),
                    ),
                  ),
                  SizedBox(width: PADDING),
                  ButtonTheme(
                    minWidth: 0,
                    buttonColor: Theme.of(context).accentColor,
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          _value++;
                          widget.function(_value);
                        });
                      },
                      padding: EdgeInsets.all(8),
                      shape: CircleBorder(),
                      elevation: 5,
                      child: Icon(
                        Icons.add,
                        size: 36,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
