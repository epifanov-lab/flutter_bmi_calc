import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeightSlider extends StatefulWidget {
  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 24),
            Text(
              "HEIGHT",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "${_value.toInt()}",
              style: TextStyle(fontSize: 28),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Slider(
                activeColor: Theme.of(context).accentColor,
                min: 0.0,
                max: 220.0,
                onChanged: (newValue) {
                  setState(() => _value = newValue);
                },
                value: _value,
              ),
            ),
            SizedBox(height: 12)
          ],
        ),
      ),
    );
  }
}
