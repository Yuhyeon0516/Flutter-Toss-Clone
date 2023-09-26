import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';

class IconsButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final EdgeInsets padding;
  final VoidCallback onTap;

  const IconsButton({
    super.key,
    required this.icon,
    this.iconSize = 30,
    this.padding = const EdgeInsets.all(10.0),
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Tap(
        onTap: onTap,
        child: Icon(
          icon,
          size: iconSize,
        ),
      ),
    );
  }
}
