import 'package:flutter/material.dart';

class TitleWithStar extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleWithStar({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
              Text(subtitle)
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.amber),
        Text("41")
      ],
    );
  }
}
