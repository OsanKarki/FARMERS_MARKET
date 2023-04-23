import 'package:flutter/material.dart';

class DrawerListTile extends StatefulWidget {
  final String? text;
  final String imageAsset;
  final VoidCallback? onTap;
  final bool isActive;


  const DrawerListTile({
    Key? key,
    this.text,
    required this.imageAsset,
    required this.onTap, required this.isActive,
  }) : super(key: key);

  @override
  State<DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        if (widget.isActive)
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,

            child: Container(
              color: const Color(0xff35BC88),
            ),
          ),
        ListTile(
          leading: Image.asset(
            widget.imageAsset,
            color: widget.isActive ? Colors.white : const Color(0xff35BC88),
          ),
          title: Text(
            widget.text!,
            style: TextStyle(
              color: widget.isActive ? Colors.white : const Color(0xff35BC88),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: widget.onTap,
        ),
      ],
    );
  }
}
