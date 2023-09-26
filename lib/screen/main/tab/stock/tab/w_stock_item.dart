import 'package:flutter/material.dart';
import 'package:toss/screen/main/tab/stock/vo_stock.dart';

import '../../../../../common/common.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(stock.stockImagePath, width: 50),
          width20,
          (stock.stockName).text.size(18).bold.make(),
          emptyExpanded,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              stock.todayPercentageString.text
                  .color(stock.getPriceColor(context))
                  .bold
                  .make(),
              "${stock.currentPrice.toComma()}원"
                  .text
                  .color(context.appColors.lessImportant)
                  .make(),
            ],
          )
        ],
      ),
    );
  }
}
