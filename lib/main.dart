import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/Provider/settingsProvider.dart';
import 'package:islami/ui/MyTheneData.dart';
import 'package:islami/ui/chabterDetails/chapter.dart';
import 'package:islami/ui/hadethDetails/hadethDetilsScreen.dart';
import 'package:islami/ui/home/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,
      themeMode: settingsProvider.currentTheme,
      initialRoute: HomeView.pageRaute,
      routes: {
        ChapterView.pageRaute: (context) => ChapterView(),
        HomeView.pageRaute: (context) => HomeView(),
        HadethDetilsScreen.routeName: (context) => const HadethDetilsScreen(),
      },
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale(settingsProvider.lang),
    );
  }
}
