import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/widget/w_icon_button.dart';

class StockFragment extends StatefulWidget {
  final double iconSize = 30.0;
  final double iconPadding = 10.0;
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.appColors.appBarBackground,
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
          )
        ],
      ),
    );
  }
}
