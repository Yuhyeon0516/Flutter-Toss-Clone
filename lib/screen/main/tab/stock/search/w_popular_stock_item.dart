import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/screen/main/tab/stock/vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int index;
  const PopularStockItem({super.key, required this.stock, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: index.text.size(18).make(),
        ),
        width30,
        stock.stockName.text.size(18).make(),
        emptyExpanded,
        stock.todayPercentageString.text
            .color(stock.getPriceColor(context))
            .make(),
      ],
    ).pSymmetric(v: 25);
  }
}
