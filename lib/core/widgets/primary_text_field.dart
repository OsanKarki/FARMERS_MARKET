import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final double height;

  const PrimaryTextField({
    super.key,
    this.label,
    this.hintText,
    this.height = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (label != null)
          Column(
            children: [
              Text(
                label!,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        Container(
            padding: const EdgeInsets.only(top: 1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(blurRadius: 3, offset: Offset(0, 2)),
                  BoxShadow(
                      blurRadius: 3,
                      color: Colors.white,
                      offset: Offset(-3, 0)),
                  BoxShadow(
                      blurRadius: 3, color: Colors.white, offset: Offset(3, 0)),
                ]),
            child: TextFormField(
              style: const TextStyle(
                fontSize: 17,
              ),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: height, horizontal: 10),
                hintText: hintText,
                hintStyle: const TextStyle(color: Color(0xffB6B6B6)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide:
                        const BorderSide(color: Color(0xFF35BC88), width: 1.6)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                    width: 1.6,
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}