import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const RoundedContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: context.appColors.buttonBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
