import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/widget/w_icon_button.dart';
import 'package:toss/screen/main/tab/stock/tab/f_my_stock.dart';
import 'package:toss/screen/main/tab/stock/tab/f_todays_discovery.dart';

class StockFragment extends StatefulWidget {
  final double iconSize = 30.0;
  final double iconPadding = 10.0;
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.appColors.appBarBackground,
            surfaceTintColor: context.appColors.appBarBackground,
            pinned: true,
            actions: [
              IconsButton(
                icon: Icons.search,
                onTap: () {
                  context.showSnackbar("검색");
                },
              ),
              IconsButton(
                icon: Icons.edit_calendar_outlined,
                onTap: () {
                  context.showSnackbar("캘린더");
                },
              ),
              IconsButton(
                icon: Icons.settings,
                onTap: () {
                  context.showSnackbar("설정");
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                title,
                tabBar,
                if (currentIndex == 0)
                  const MyStockFragment()
                else
                  const TodaysDiscoveryFragment()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          "토스증권".text.size(24).bold.make(),
          width20,
          'S&P 500'
              .text
              .size(13)
              .bold
              .color(context.appColors.lessImportant)
              .make(),
          width5,
          3919.29
              .toComma()
              .text
              .size(14)
              .bold
              .color(context.appColors.plus)
              .make(),
        ],
      ).pOnly(left: 20);

  Widget get tabBar => Column(
        children: [
          TabBar(
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            labelPadding: const EdgeInsets.symmetric(vertical: 20),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: -20),
            indicatorColor: Colors.white,
            tabs: ["내 주식".text.make(), "오늘의 발견".text.make()],
            controller: tabController,
          ),
          const Line(),
        ],
      );
}
