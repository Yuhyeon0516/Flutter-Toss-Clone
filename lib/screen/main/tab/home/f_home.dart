import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/widget/w_big_button.dart';
import 'package:toss/screen/dialog/d_message.dart';
import 'package:toss/screen/main/tab/home/w_toss_app_bar.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                BigButton(
                  "토스뱅크",
                  onTap: () {
                    context.showSnackbar("토스뱅크를 눌렀습니다.");
                  },
                )
              ],
            ).pSymmetric(h: 10),
          ),
          const TossAppBar()
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'
              .text
              .white
              .size(13)
              .make()
              .centered()
              .pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
