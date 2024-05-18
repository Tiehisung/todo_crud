import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final int? maxlines;
  final String hintTxt, label;
  final TextEditingController txtController;
  const InputWidget({
    super.key,
    required this.txtController,
    this.maxlines = 1,
    this.hintTxt = "",
    required this.label,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtController,
      maxLines: maxlines,
      decoration: InputDecoration(
          label: Text(label,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintText: hintTxt),
    );
  }
}
