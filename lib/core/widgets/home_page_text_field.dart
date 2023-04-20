import 'package:flutter/material.dart';


class HomePageTextField extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const HomePageTextField({
    super.key,  required this.height,  required this.width, required this.text,
  });



  @override
  Widget build(BuildContext context) {


    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              text!,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              style: const TextStyle(
                fontSize: 17,
              ),
              decoration: InputDecoration(
                hintStyle:
                const TextStyle(color: Color(0xffB6B6B6)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                        color: Color(0xFF35BC88), width: 1.6)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                    width: 1.6,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

