import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String test;
  const HomePage({super.key, required this.test});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Home"),
        ),
        body: ListView(),
      ),
    );
  }
}
