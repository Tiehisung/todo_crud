import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String txt;
  final FontWeight? txtFontWeight;
  final Color? txtColor;
  final double? fontSize;
  const TextWidget(
      {super.key,
      required this.txt,
      this.txtColor,
      this.txtFontWeight,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(txt,
        style: TextStyle(
            color: txtColor, fontSize: fontSize, fontWeight: txtFontWeight));
  }
}
