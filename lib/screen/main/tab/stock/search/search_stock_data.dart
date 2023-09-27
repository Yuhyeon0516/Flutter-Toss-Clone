import 'package:get/get.dart';
import 'package:toss/common/util/local_json.dart';
import 'package:toss/screen/main/tab/stock/vo_simple_stock.dart';

import '../../../../../common/common.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> searchResult = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(["삼성전자", "LG전자", "현대차", "넷플릭스"]);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList =
        await LocalJson.getObjectList<SimpleStock>("json/stock_list.json");
    stocks.addAll(jsonList);
  }

  void search(String text) {
    if (isBlank(text)) {
      searchResult.clear();
      return;
    }
    searchResult.value =
        stocks.where((element) => element.stockName.contains(text)).toList();
  }
}
