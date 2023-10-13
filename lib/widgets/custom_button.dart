import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  CutomButton(
      {super.key,
      required this.btnTxt,
      required this.bgColor,
      required this.txtColor,
      required this.onPressed,
      this.height = 50,
      this.width = 320});
  String btnTxt;
  double height;
  double width;
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
            fixedSize: Size(width, height)),
        child: Text(
          btnTxt,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
