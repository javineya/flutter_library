import 'package:flutter/material.dart';
/*
  The GestureDetector is another well-named widget in the library. What isn't
   clear from the name is how many different types of gestures this widget
   can detect.

   The GestureDetector is a state-altering widget that should be housed in a
   Stateful widget and uses a gesture to change state.
 */

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({Key? key}) : super(key: key);

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  bool _lightIsOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.lightbulb_outline,
              color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
              size: 60,
            ),
          ),
          GestureDetector(
            // onTap is a pretty basic gesture-based function; there are
            // loads more options available for this widget
            onTap: () {
              setState(() {
                _lightIsOn = !_lightIsOn;
              });
            },
            child: Container(
              color: Colors.black87,
              padding: const EdgeInsets.all(8),
              // Change button text when light changes state.
              child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
            ),
          ),
        ],
      ),
    );
  }
}
