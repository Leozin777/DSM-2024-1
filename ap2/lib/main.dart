import 'package:ap2/view/pages/character_screen.dart';
import 'package:ap2/view/tab_bar_personalizada.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarPersonalizada(),
    );
  }
}
