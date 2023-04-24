import 'package:agriculture_app/core/widgets/primary_text_field.dart';
import 'package:flutter/material.dart';

import '../config/size_config.dart';

class ChildrenDropDownTextField extends StatefulWidget {
  const ChildrenDropDownTextField({super.key});

  @override
  _ChildrenDropDownTextFieldState createState() =>
      _ChildrenDropDownTextFieldState();
}

class _ChildrenDropDownTextFieldState extends State<ChildrenDropDownTextField> {
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
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Expanded(

                    child: PrimaryTextField(

                      hintText: 'Name of child ${i + 1} ',
                    ),

                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: PrimaryTextField(
                      hintText: 'Occupation of child ${i + 1} ',
                    ),
                  ),
                ],
              )),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Number Of Children',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          // Dropdown for No. of Children
          Container(
            padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.6),
                borderRadius: BorderRadius.circular(11),
                boxShadow: const [
                  BoxShadow(blurRadius: 3, offset: Offset(0, 2)),
                  BoxShadow(
                      blurRadius: 3,
                      color: Colors.white,
                      offset: Offset(-3, 0)),
                  BoxShadow(
                      blurRadius: 3, color: Colors.white, offset: Offset(3, 0)),
                ]),
            child: DropdownButton(
              borderRadius: BorderRadius.circular(10),
              dropdownColor: const Color(0xff35BC88),
              menuMaxHeight: 300,
              iconSize: 36,
              underline: const SizedBox(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 19,
              ),
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
          ),

          // Display Text Fields for Children
          ...childrenFields,
        ],
      ),
    );
  }
}
