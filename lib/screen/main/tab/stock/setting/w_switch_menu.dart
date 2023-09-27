import 'package:flutter/cupertino.dart';
import 'package:toss/common/common.dart';
import 'package:toss/screen/main/tab/stock/setting/w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.bold.make(),
        emptyExpanded,
        OsSwitch(isOn, onChanged: onChanged)
      ],
    ).p20();
  }
}
