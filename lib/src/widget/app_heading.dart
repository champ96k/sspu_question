import 'package:flutter/material.dart';

class AppHeading extends StatelessWidget {
  final AlignmentGeometry alignment;
  final double subTextFontSize;
  final String text;
  final String subText;

  const AppHeading({
    Key key,
    this.alignment = Alignment.centerLeft,
    this.subTextFontSize = 32.0,
    this.text = '',
    this.subText = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      alignment: alignment,
      child: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.03,
          top: size.height * 0.006,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 26.0,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              subText,
              style: TextStyle(
                color: Colors.black,
                fontSize: subTextFontSize,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
