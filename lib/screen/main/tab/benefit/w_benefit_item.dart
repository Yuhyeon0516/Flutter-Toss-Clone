import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/screen/main/tab/benefit/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.appColors.roundedLayoutBackground,
      ),
      child: Row(
        children: [
          Image.asset(
            benefit.imagePath,
            width: 50,
            height: 50,
          ),
          width10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              benefit.subTitle.text.size(16).make(),
              height5,
              benefit.title.text
                  .size(16)
                  .color(context.appColors.blueText)
                  .bold
                  .make(),
            ],
          )
        ],
      ).pSymmetric(v: 20),
    );
  }
}
