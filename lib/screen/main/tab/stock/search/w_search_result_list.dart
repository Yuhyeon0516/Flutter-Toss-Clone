import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:toss/screen/main/tab/stock/search/search_stock_data.dart';

class SearchResultList extends StatelessWidget with SearchStockDataProvider {
  final TextEditingController controller;
  SearchResultList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final stock = searchData.searchResult[index];
        final stockName = stock.stockName;

        return Tap(
            onTap: () {
              controller.clear();
              searchData.addHistory(stock);
              Nav.push(StockDetailScreen(
                stockName: stockName,
              ));
            },
            child: stockName.text.make().p(20));
      },
      itemCount: searchData.searchResult.length,
    );
  }
}
