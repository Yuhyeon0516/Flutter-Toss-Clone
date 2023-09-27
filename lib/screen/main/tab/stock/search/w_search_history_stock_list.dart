import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/data/preference/app_preferences.dart';
import 'package:toss/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:toss/screen/main/tab/stock/search/search_stock_data.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.only(top: 8, left: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final stockName = searchData.searchHistoryList[index];

            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: Row(
                    children: [
                      Tap(
                        onTap: () {
                          Nav.push(StockDetailScreen(stockName: stockName));
                        },
                        child: stockName.text.make(),
                      ),
                      Tap(
                        onTap: () {
                          searchData.removeHistory(stockName);
                        },
                        child: const Icon(Icons.close),
                      ),
                    ],
                  )
                      .box
                      .withRounded(value: 6)
                      .color(context.appColors.roundedLayoutBackground)
                      .p8
                      .make(),
                ),
              ],
            );
          },
          itemCount: searchData.searchHistoryList.length,
        ),
      ),
    );
  }
}
