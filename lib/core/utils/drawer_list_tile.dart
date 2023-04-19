import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String? text;
  final String imageAsset;
  final VoidCallback? onTap;

  const DrawerListTile({
    super.key,
    this.text,
    required this.imageAsset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageAsset, color: const Color(0xff35BC88)),
      title: Text(
        text!,
        style: const TextStyle(
            color: Color(0xff35BC88),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      onTap: onTap,
    );
  }
}
