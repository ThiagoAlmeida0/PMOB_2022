import 'package:flutter/material.dart';

class IconRoundedButtom extends StatelessWidget {
  final String imagePath;
  final GestureTapCallback onTap;

  const IconRoundedButtom({
    Key? key,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xFF9dbebb),
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}