import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeightSlider extends StatefulWidget {
  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Text(
          "HEIGHT",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
