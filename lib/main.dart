import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_view.dart';
import 'package:islami/ui/home/quran/chapter.dart';

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
      theme: ThemeData(
        bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 34
          )
        ),

        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme:const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
            centerTitle: true,
          backgroundColor:  Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )
        ),

        colorScheme: ColorScheme.fromSeed(
            seedColor:const Color(0xffB7935F),
            primary:const Color(0xffB7935F),
        secondary:const Color(0x9bb7935f), ),
        useMaterial3: true,
      ),
      initialRoute: HomeView.pageRaute,
      routes: {
        ChapterView.pageRaute: (context) => ChapterView(),
        HomeView.pageRaute : (context) => HomeView(),
      },
    );
  }
}
