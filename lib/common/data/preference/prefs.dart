import 'package:toss/common/data/preference/item/nullable_preference_item.dart';
import 'package:toss/common/data/preference/item/rx_preference_item.dart';
import 'package:toss/common/data/preference/item/rxn_preference_item.dart';
import 'package:toss/common/theme/custom_theme.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOn = RxPreferenceItem<bool, RxBool>('isPushOn', false);
  static final sliderPosition =
      RxPreferenceItem<double, RxDouble>('sliderPosition', 0.0);
  static final birthday =
      RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthday', null);
  static final number = RxPreferenceItem<int, RxInt>('number', 0);
}
