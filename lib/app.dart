import 'package:flutter/material.dart';
import 'package:rgb_project/screens/color_generator_screen.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'RGB',
      home: ColorGeneratorScreen(),
    );
  }
}
