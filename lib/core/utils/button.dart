import 'package:flutter/material.dart';



class PrimaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final double height;
  final double? width;
  final double? borderRadius;

  static const double defaultBorderRadius = 9;


  const PrimaryButton({
   required this.text,
    required this.onPressed,
    this.height = 15,
    this.width ,
    this.borderRadius=10,
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(padding:EdgeInsets.symmetric(vertical: height) ,
          backgroundColor:  const Color(0xff35BC88),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? defaultBorderRadius),),
        ),
        child: Center(child: Text(text!)),
      ),
    );
  }
}
