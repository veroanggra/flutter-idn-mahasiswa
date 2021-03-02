import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static Color mainColor = Color(0x9c27b0);
  static Color secondColor = Color(0xd05ce3);
  static Color background = Color(0xf3e5f5);
  static Color titleColor = Color(0x332f33);
  static const primaryGradient = LinearGradient(
      colors: [Color(0x332f33), Color(0xd05ce3)],
      stops: [0.0, 1.0],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}
