import 'package:aula10/widgets/CustomIcon.dart';
import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icon;
  final String text;

  const IconWithText({super.key, required this.size, required this.color, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIcon(size: size, color: color, icon: icon),
        Text(text)
      ],
    );
  }
}
