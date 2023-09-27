import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toss/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:toss/screen/main/tab/stock/search/w_popular_search_stock_list.dart';
import 'package:toss/screen/main/tab/stock/search/w_search_history_stock_list.dart';
import 'package:toss/screen/main/tab/stock/search/w_search_result_list.dart';
import 'package:toss/screen/main/tab/stock/search/w_stock_search_app_bar.dart';

class SearchStockScreen extends StatefulWidget {
  const SearchStockScreen({super.key});

  @override
  State<SearchStockScreen> createState() => _SearchStockFragmentState();
}

class _SearchStockFragmentState extends State<SearchStockScreen>
    with SearchStockDataProvider {
  final controller = TextEditingController();

  @override
  void initState() {
    Get.put(SearchStockData());
    controller.addListener(() {
      searchData.search(controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SearchStockData>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(
        controller: controller,
      ),
      body: Obx(
        () => searchData.searchResult.isEmpty
            ? ListView(
                children: const [
                  SearchHistoryStockList(),
                  PopularSearchStockList(),
                ],
              )
            : SearchResultList(
                controller: controller,
              ),
      ),
    );
  }
}
