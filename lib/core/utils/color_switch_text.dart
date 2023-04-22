import 'package:flutter/material.dart';

class ColorSwitchText extends StatelessWidget {
  final String text1;
  final String text2;
  final double fontSize;

  const ColorSwitchText({
    super.key,
    required this.text1,
    required this.text2,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          shadows: [
            Shadow(
              offset: const Offset(0, 2.5),
              blurRadius: 3,
              color: Colors.black.withOpacity(0.25),
            ),
          ],
        ),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              color: const Color(0xff1BA37D),
              shadows: [
                Shadow(
                  offset: const Offset(0, 2.5),
                  blurRadius: 3,
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
