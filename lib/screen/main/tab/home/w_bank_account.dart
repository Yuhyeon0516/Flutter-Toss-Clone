import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/widget/w_rounded_container.dart';
import 'package:toss/screen/main/tab/home/vo/vo_bank_account.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;
  const BankAccountWidget(this.account, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (account.accountTypeName ?? "${account.bank.name} 통장")
                .text
                .white
                .size(12)
                .make(),
            ("${account.balance.toComma()} 원").text.white.size(18).bold.make(),
          ],
        ).pSymmetric(h: 20, v: 10),
        emptyExpanded,
        RoundedContainer(
          backgroundColor: context.appColors.buttonBackground,
          radius: 10,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: "송금".text.white.bold.make(),
        )
      ],
    );
  }
}
