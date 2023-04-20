import 'package:flutter/material.dart';

import '../../features/auth/login_page.dart';

class ButtonWidgets extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final double? borderRadius;

  static const double defaultBorderRadius = 9;


  const ButtonWidgets({
   required this.text,
    required this.onPressed,
    this.height = 45,
    this.width = 117,
    super.key,
    required this.borderRadius,
  });



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:  const Color(0xff35BC88),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? defaultBorderRadius),),
      ),
      child: SizedBox(

          height: height,
          width: width,
          child: Center(child: Text(text!))),
    );
  }
}
