import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:toss/app.dart';
import 'package:toss/common/common.dart';
import 'package:toss/common/data/preference/app_preferences.dart';
import 'package:toss/common/data/preference/prefs.dart';
import 'package:toss/common/theme/custom_theme.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();
  await Prefs.appTheme.set(CustomTheme.dark);
  timeago.setLocaleMessages('ko', timeago.KoMessages());

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: const App()));
}
