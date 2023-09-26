import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/widget/w_arrow.dart';
import 'package:toss/common/widget/w_long_button.dart';
import 'package:toss/common/widget/w_rounded_container.dart';
import 'package:toss/screen/main/s_main.dart';
import 'package:toss/screen/main/tab/stock/tab/w_interest_stock_list.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myAccount(context),
        height20,
        myStocks(context),
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

  Widget myStocks(BuildContext context) => Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: context.appColors.roundedLayoutBackground,
            child: Column(
              children: [
                height30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '관심주식'.text.size(18).bold.make(),
                    '편집하기'.text.color(context.appColors.lessImportant).make(),
                  ],
                ),
                height20,
                Tap(
                  onTap: () {
                    context.showSnackbar('기본');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '기본'.text.size(18).make(),
                        Arrow(
                          direction: AxisDirection.up,
                          size: 20,
                          color: context.appColors.lessImportant,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const InterestStockList().pSymmetric(h: 15),
          const Height(MainScreenState.bottomNaivgationBarHeight),
        ],
      );
}
