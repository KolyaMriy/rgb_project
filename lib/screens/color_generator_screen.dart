import 'package:flutter/material.dart';
import 'package:rgb_project/utils/color_utils.dart';

class ColorGeneratorScreen extends StatefulWidget {
  const ColorGeneratorScreen({super.key});

  @override
  State<ColorGeneratorScreen> createState() => _ColorGeneratorScreenState();
}

class _ColorGeneratorScreenState extends State<ColorGeneratorScreen> {
  Color _color = ColorUtils.generateRandomColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            final newColor = ColorUtils.generateRandomColor();
            _color = ColorUtils.uniqueColor(_color, newColor);
          },
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: _color,
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Text(
              'Hello there',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
