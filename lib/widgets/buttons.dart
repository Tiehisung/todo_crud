import 'package:flutter/material.dart';

class PrimaryBtnWidget extends StatelessWidget {
  const PrimaryBtnWidget(
      {super.key, required this.buttonTxt, required this.onPressed});
  final String buttonTxt;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: MaterialButton(
            elevation: 3,
            onPressed: onPressed,
            color: Colors.blue,
            child: Text(buttonTxt, style: TextStyle(color: Colors.white))));
  }
}

class FlatButtonWidget extends StatelessWidget {
  const FlatButtonWidget(
      {super.key, this.onPressed, this.iconData, this.buttonText});
  final Function()? onPressed;
  final IconData? iconData;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [Icon(iconData), Text("$buttonText")],
      ),
    );
  }
}
