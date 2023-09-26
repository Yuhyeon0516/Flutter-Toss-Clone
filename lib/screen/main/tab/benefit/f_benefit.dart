import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/screen/main/s_main.dart';
import 'package:toss/screen/main/tab/benefit/benefit_dummies.dart';
import 'package:toss/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:toss/screen/main/tab/benefit/w_point_button.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
          bottom: MainScreenState.bottomNaivgationBarHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height30,
          "헤택".text.size(24).bold.make(),
          height30,
          const PointButton(
            point: 569,
          ),
          height20,
          "혜택 더 받기".text.white.bold.size(16).make(),
          ...benefitList.map((e) => BenefitItem(benefit: e)).toList()
        ],
      ).pSymmetric(h: 20),
    );
  }
}
