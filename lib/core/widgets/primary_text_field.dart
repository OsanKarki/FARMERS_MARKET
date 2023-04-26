import 'package:flutter/material.dart';

class PrimaryTextField extends StatefulWidget {
  final String? label;
  final String? hintText;
  final double height;
  final bool isPassword;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;

  const PrimaryTextField({
    super.key,
    this.label,
    this.hintText,
    this.height = 15,
    this.isPassword = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,

  });

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {

  bool isHidden = true;


  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (widget.label != null)
          Column(
            children: [
              Text(
                widget.label!,
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
              keyboardType: widget.keyboardType ?? TextInputType.text,
              obscureText: widget.isPassword ? isHidden : false,
              decoration: InputDecoration(
                prefixIcon: widget.prefixIcon != null
                    ? Icon(
                        widget.prefixIcon,
                        color: Colors.black38,
                      )
                    : null,
                suffixIcon: widget.isPassword
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        child: Icon(
                          isHidden ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black38,
                        ))
                    : null,

                contentPadding: EdgeInsets.symmetric(
                    vertical: widget.height, horizontal: 10),
                hintText: widget.hintText,
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
