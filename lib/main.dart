import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/ui/MyTheneData.dart';
import 'package:islami/ui/chabterDetails/chapter.dart';
import 'package:islami/ui/hadethDetails/hadethDetilsScreen.dart';
import 'package:islami/ui/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,
      themeMode: ThemeMode.light,
      initialRoute: HomeView.pageRaute,
      routes: {
        ChapterView.pageRaute: (context) => ChapterView(),
        HomeView.pageRaute : (context) => HomeView(),
        HadethDetilsScreen.routeName:(context)=> HadethDetilsScreen(),
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale:Locale('ar'),
    );
  }
}
