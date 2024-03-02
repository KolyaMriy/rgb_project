import 'dart:math';
import 'package:flutter/material.dart';

abstract class _Constant {
  static const maxNumberRgbColor = 256;
}

abstract class ColorUtils {
  ///Generates a random number from 16,777,216 possible options
  static Color generateRandomColor() {
    final random = Random();

    return Color.fromRGBO(
      random.nextInt(_Constant.maxNumberRgbColor),
      random.nextInt(_Constant.maxNumberRgbColor),
      random.nextInt(_Constant.maxNumberRgbColor),
      1.0,
    );
  }

  ///checks whether the color is unique,
  ///if not, then regenerates the number until the color becomes unique
  static Color uniqueColor(Color oldColor, Color newColor) {
    if (oldColor != newColor) {
      return newColor;
    } else {
      final newColor = generateRandomColor();

      return uniqueColor(oldColor, newColor);
    }
  }
}
