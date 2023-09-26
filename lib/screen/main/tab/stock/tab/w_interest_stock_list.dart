import 'package:flutter/material.dart';
import 'package:toss/common/dart/extension/context_extension.dart';
import 'package:toss/common/widget/w_height_and_width.dart';
import 'package:toss/screen/main/tab/stock/stock_dummies.dart';
import 'package:toss/screen/main/tab/stock/tab/w_stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      child: Column(
        children: [
          height10,
          ...myInterestStocks.map((e) => StockItem(e)).toList(),
        ],
      ),
    );
  }
}
