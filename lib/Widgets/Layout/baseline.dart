import 'package:flutter/material.dart';

/*
  The Baseline widget changes the starting point of drawing. It's generally
  used for text in situations where you don't want the test aligned with the
  top of its parent, which is what happens by default. You set the "baseline"
  , which tells the widget how far away from the top to begin drawing.

  The Baseline widget isn't meaningful unless it's housed inside a SizedBox
  of some sort.
 */

class MyBaseline extends StatelessWidget {
  const MyBaseline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      height: 100.0,
      child: Baseline(
          baseline: 40.0,
          baselineType: TextBaseline.alphabetic,
          child: Text('A baseline widget allows text to be drawn at a '
              'specified distance away from the top of its parent. This '
              'example is 40 pixels from the top. Border added to show the '
              'effect.')),
    );
  }
}
