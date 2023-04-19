import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  final String? hint;

  const TextFieldBox({Key? key, this.hint,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(56,35,56,0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xffB6B6B6)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: const BorderSide(color: Color(0xFF35BC88),width: 1.6)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
              width: 1.6,
            ),
          ),
        ),
      ),
    );
  }
}
