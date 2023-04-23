
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChildrenTextField extends StatefulWidget {
  @override
  _ChildrenTextFieldState createState() => _ChildrenTextFieldState();
}

class _ChildrenTextFieldState extends State<ChildrenTextField> {
  late int noOfChildren;
  List<Widget> childrenFields = [];

  @override
  void initState() {
    super.initState();
    noOfChildren = 0;
  }

  void updateChildrenFields(int value) {
    setState(() {
      noOfChildren = value;
      childrenFields.clear();
      for (int i = 0; i < noOfChildren; i++) {
        childrenFields.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Child ${i + 1} Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dropdown for No. of Children
          DropdownButton(
            value: noOfChildren,
            hint: Text('No. of Children'),
            onChanged: (value) {
              updateChildrenFields(value!);
            },
            items: [
              DropdownMenuItem(value: 0, child: Text('0')),
              DropdownMenuItem(value: 1, child: Text('1')),
              DropdownMenuItem(value: 2, child: Text('2')),
              DropdownMenuItem(value: 3, child: Text('3')),
            ],
          ),

          // Display Text Fields for Children
          ...childrenFields,
        ],
      ),
    );
  }
}