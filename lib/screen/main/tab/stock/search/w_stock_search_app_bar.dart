import 'package:flutter/material.dart';
import 'package:toss/common/util/app_keyboard_util.dart';
import 'package:toss/common/widget/w_arrow.dart';
import 'package:toss/common/widget/w_text_field_with_delete.dart';

import '../../../../../common/common.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;
  const StockSearchAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: SizedBox(
              width: 56,
              height: kToolbarHeight,
              child: Tap(
                onTap: () {
                  Nav.pop(context);
                },
                child: const Arrow(
                  direction: AxisDirection.left,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextFieldWithDelete(
              controller: controller,
              texthint: "'커피'를 검색해보세요",
              textInputAction: TextInputAction.search,
              onEditingComplete: () {
                AppKeyboardUtil.hide(context);
              },
            ).pOnly(top: 6),
          ),
          width20,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
