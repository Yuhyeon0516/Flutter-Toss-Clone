import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/widget/w_arrow.dart';

class LongButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const LongButton(this.title, {super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          title.text.bold.size(18).make(),
          emptyExpanded,
          Arrow(
            color: context.appColors.lessImportant,
          ),
        ],
      ),
    );
  }
}
