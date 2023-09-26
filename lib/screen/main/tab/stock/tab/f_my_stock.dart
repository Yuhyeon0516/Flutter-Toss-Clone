import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/widget/w_arrow.dart';
import 'package:toss/common/widget/w_long_button.dart';
import 'package:toss/common/widget/w_rounded_container.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myAccount(context),
        height20,
      ],
    );
  }

  Widget myAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            "계좌".text.size(18).bold.make(),
            Row(
              children: [
                '443원'.text.size(24).bold.make(),
                const Arrow(),
                emptyExpanded,
                RoundedContainer(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  backgroundColor: context.appColors.buttonBackground,
                  radius: 8,
                  child: '채우기'.text.size(12).make(),
                ),
                width20,
              ],
            ),
            height30,
            Line(
              color: context.appColors.divider,
            ),
            height10,
            const LongButton('주문내역'),
            const LongButton('판매수익'),
          ],
        ),
      );
}
