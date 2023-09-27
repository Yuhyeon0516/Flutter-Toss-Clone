import 'package:flutter/material.dart';
import 'package:toss/screen/main/tab/stock/search/w_popular_search_stock_list.dart';
import 'package:toss/screen/main/tab/stock/search/w_search_history_stock_list.dart';
import 'package:toss/screen/main/tab/stock/search/w_stock_search_app_bar.dart';

class SearchStockFragment extends StatefulWidget {
  const SearchStockFragment({super.key});

  @override
  State<SearchStockFragment> createState() => _SearchStockFragmentState();
}

class _SearchStockFragmentState extends State<SearchStockFragment> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(
        controller: controller,
      ),
      body: ListView(
        children: const [
          SearchHistoryStockList(),
          PopularSearchStockList(),
        ],
      ),
    );
  }
}
