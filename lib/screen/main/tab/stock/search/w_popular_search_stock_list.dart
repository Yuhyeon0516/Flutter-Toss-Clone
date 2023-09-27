import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/dart/extension/datetime_extension.dart';
import 'package:toss/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:toss/screen/main/tab/stock/search/w_popular_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            "인기 검색".text.bold.size(18).make(),
            emptyExpanded,
            "오늘 ${DateTime.now().formattedTime} 기준".text.size(14).make()
          ],
        ),
        height20,
        ...popularStock
            .mapIndexed((e, index) => PopularStockItem(
                  stock: e,
                  index: index + 1,
                ))
            .toList()
      ],
    ).pSymmetric(h: 20);
  }
}
