import 'dart:math';
import 'package:flutter/material.dart';

class NameColorGenerator {
  static Color generateColorFromName(String name) {
    final int hashCode = name.hashCode;
    final int r = (hashCode >> 16) & 0xFF;
    final int g = (hashCode >> 8) & 0xFF;
    final int b = hashCode & 0xFF;
    final double luminance = (0.2126 * r + 0.7152 * g + 0.0722 * b) / 255;
    if (luminance > 0.5) {
      return Color.fromRGBO(
        max(0, r - 30),
        max(0, g - 30),
        max(0, b - 30),
        1,
      );
    } else {
      return Color.fromRGBO(
        min(255, r + 30),
        min(255, g + 30),
        min(255, b + 30),
        1,
      );
    }
  }
}
