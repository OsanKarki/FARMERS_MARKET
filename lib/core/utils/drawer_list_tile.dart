import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String? text;
  final String imageAsset;
  final VoidCallback? onTap;
  final bool isActive;

  const DrawerListTile({
    Key? key,
    this.text,
    required this.imageAsset,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isActive)
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,

            child: Container(
              color: Color(0xff35BC88),
            ),
          ),
        ListTile(
          leading: Image.asset(
            imageAsset,
            color: isActive ? Colors.white : Color(0xff35BC88),
          ),
          title: Text(
            text!,
            style: TextStyle(
              color: isActive ? Colors.white : Color(0xff35BC88),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
