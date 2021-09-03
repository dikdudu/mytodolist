import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mytodolist/app/core/flavor/flavors.dart';
import 'package:mytodolist/app/modules/home/home_page.dart';

void initApp(Flavor flavor) {
  appFlavor = flavor;
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appFlavor!.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      localizationsDelegates: [
        FlutterI18nDelegate(
          translationLoader: FileTranslationLoader(
              useCountryCode: false,
              fallbackFile: "pt",
              basePath: "assets/i18n"),
          missingTranslationHandler: (key, locale) {
            print("--- Missing Key: $key, languageCode: $locale");
          },
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: FlutterI18n.rootAppBuilder(),
      supportedLocales: [Locale('pt', 'BR')], //If you want to support RTL.
    );
  }
}
