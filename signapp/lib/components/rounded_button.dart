import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Size size;
  final Function onClicked;
  final String title;
  final Color color;
  final Color fontColor;
  const RoundedButton({
    Key? key,
    required this.size,
    required this.onClicked,
    required this.title,
    required this.color, required this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onClicked();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          child: Text(
            title,
            style: TextStyle(
              color: fontColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
