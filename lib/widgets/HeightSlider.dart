import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../main.dart';

class HeightSlider extends StatefulWidget {
  Function function;
  HeightSlider(this.function);

  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: PADDING),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "HEIGHT",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "${height.toInt()}",
            style: TextStyle(fontSize: 28),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16.0),
              ),
              child: Slider(
                activeColor: Theme.of(context).accentColor,
                min: 0.0,
                max: 220.0,
                onChanged: (newValue) {
                  setState(() {
                    widget.function(newValue);
                    return height = newValue;
                  });
                },
                value: height,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
