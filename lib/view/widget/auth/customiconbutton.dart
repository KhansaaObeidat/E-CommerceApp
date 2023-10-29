import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, this.color, this.size, required this.icon});
  final Color? color;
  final double? size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
          size: size,
        ));
  }
}
