import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tranlation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ru', 'RU'),Locale('uz','UZ')],
        path: 'assets/translation', // <-- change the path of the translation files
        fallbackLocale: Locale('uz', 'UZ'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: HomePage()
    );
  }
}
