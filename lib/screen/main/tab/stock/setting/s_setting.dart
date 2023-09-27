import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/dart/extension/datetime_extension.dart';
import 'package:toss/common/data/preference/prefs.dart';
import 'package:toss/common/widget/w_big_button.dart';
import 'package:toss/screen/main/tab/stock/setting/d_number.dart';
import 'package:toss/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:toss/screen/opensource/s_opensource.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackground,
      appBar: AppBar(
        backgroundColor: context.appColors.appBarBackground,
        surfaceTintColor: context.appColors.appBarBackground,
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          Obx(
            () => SwitchMenu(
              '푸시 설정',
              Prefs.isPushOn.get(),
              onChanged: (isOn) {
                Prefs.isPushOn.set(isOn);
              },
            ),
          ),
          Obx(
            () => Slider(
              value: Prefs.sliderPosition.get(),
              onChanged: (double value) {
                Prefs.sliderPosition.set(value);
              },
            ),
          ),
          Obx(
            () => BigButton(
              "생일 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedDate}",
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(90.days),
                  lastDate: DateTime.now().add(90.days),
                );

                if (date != null) {
                  Prefs.birthday.set(date);
                }
              },
            ),
          ),
          height10,
          Obx(
            () => BigButton(
              "저장 된 숫자 ${Prefs.number.get()}",
              onTap: () async {
                final number = await NumberDialog().show();

                if (number != null) {
                  Prefs.number.set(number);
                }
              },
            ),
          ),
          height10,
          BigButton(
            "오픈소스",
            onTap: () async {
              Nav.push(const OpensourceScreen());
            },
          )
        ],
      ),
    );
  }
}
