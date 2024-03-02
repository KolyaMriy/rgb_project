import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rgb_project/utils/color_utils.dart';

void main() {
  test('generateRandomColor returns a Color object', () {
    final color = ColorUtils.generateRandomColor();
    expect(color, isInstanceOf<Color>());
  });

  test('generateRandomColor generates 16777216 unique colors', () {
    const maxUniqueColors = 16777216;
    final Set<int> uniqueColorValues = {};
    for (int i = 0; uniqueColorValues.length < maxUniqueColors; i++) {
      final color = ColorUtils.generateRandomColor().value;
      uniqueColorValues.add(color);
    }
    expect(uniqueColorValues.length, equals(maxUniqueColors));
  });

  test('uniqueColor returns different color if newColor is equal to oldColor',
      () {
    const oldColor = Colors.black;
    const newColor = Colors.black;
    final uniqueColor = ColorUtils.uniqueColor(oldColor, newColor);
    expect(uniqueColor, isNot(equals(oldColor)));
  });

  test('uniqueColor returns newColor if it is not equal to oldColor', () {
    const oldColor = Colors.black;
    const newColor = Colors.white;
    final uniqueColor = ColorUtils.uniqueColor(oldColor, newColor);
    expect(uniqueColor, equals(newColor));
  });
}
