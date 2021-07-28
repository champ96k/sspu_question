import 'package:flutter/material.dart';

extension ExString on String {
  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(this)));
  }
}

extension IntExtension on int {
  String timeFormatter() {
    var minutes = (this / 60).round().toString();
    var seconds = (this % 60).round().toString();
    if (seconds.length == 1) {
      seconds = "0$seconds";
    }
    if (minutes.length == 1) {
      minutes = "0$minutes";
    }
    return "$minutes:$seconds";
  }
}

Color colorConvert(String color) {
  color = color.replaceAll("#", "");
  if (color.length == 6) {
    return Color(int.parse("0xFF$color")).withOpacity(0.2);
  } else if (color.length == 8) {
    return Color(int.parse("0x$color"))..withOpacity(0.2);
  }
  return Colors.red;
}
