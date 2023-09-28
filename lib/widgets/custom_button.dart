import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  CutomButton(
      {super.key,
      required this.btnTxt,
      required this.bgColor,
      required this.txtColor,
      required this.onPressed});
  String btnTxt;
  final Color bgColor;
  final Color txtColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: txtColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 15,
            backgroundColor: bgColor,
            fixedSize: Size(320, 50)),
        child: Text(
          btnTxt,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
