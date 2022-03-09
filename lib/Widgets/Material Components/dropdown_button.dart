import 'package:flutter/material.dart';

/*
  The DropdownButton is a button with a built-in dropdown menu. That menu is
  created by a simple mapping function that iterates over a list given to it,
   and creates menu items.
 */

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({Key? key}) : super(key: key);

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.2,
      child: DropdownButton(
          value: dropdownValue,
          icon: const Icon(Icons.expand_more),
          isExpanded: true,
          underline: Container(height: 2),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['One', 'Two', 'Three', 'Four']
              .map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList()),
    );
  }
}
