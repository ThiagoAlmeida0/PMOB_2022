import 'package:flutter/material.dart';

class RoundedAppButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final double height;
  final double width;
  final GestureTapCallback onTap;
  final Color textColor;
  final double textSize;
  final double buttonRouding;

  const RoundedAppButton({
    Key? key,
    required this.buttonName,
    required this.buttonColor,
    required this.width,
    required this.height,
    required this.onTap,
    required this.textColor,
    required this.textSize,
    required this.buttonRouding,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(buttonRouding))
        ),
        width: width,
        height: height,
        child: Center(child: Text(buttonName, style: TextStyle(
          color: textColor,
          fontSize: textSize ),)),
      ),
    );
  }
}
