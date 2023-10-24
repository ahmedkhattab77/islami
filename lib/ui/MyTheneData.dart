import 'package:flutter/material.dart';

class MyTheme{
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color lightsecondary = Color(0x9bb7935f);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darksecondary = Color(0xff141A2E);

  static ThemeData lightMode = ThemeData(
    textTheme: const TextTheme(

      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black
      ),
      headlineSmall:  TextStyle(
          fontFamily: 'KOUFIBD',
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.black
      ),
      bodyMedium:  TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),
    ),
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
      secondary:const Color(0x9bb7935f),
      background: Colors.white,

    ),
    useMaterial3: true,
    cardTheme: CardTheme(
      elevation: 18,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      surfaceTintColor: Colors.white,
      color: Colors.white,
    ),
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    dividerColor: lightPrimary
  );
  static ThemeData darkMode = ThemeData(
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),
      headlineSmall:  TextStyle(
          fontFamily: 'KOUFIBD',
          fontSize: 29,
          fontWeight: FontWeight.w600,
          color: Colors.white
      ),
      bodyMedium:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),
    ),
    cardTheme: CardTheme(
      elevation: 18,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      surfaceTintColor: Colors.white,
        color: darkPrimary,
    ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        selectedItemColor: lightPrimary,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 34)),

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:const AppBarTheme(
        iconTheme: IconThemeData(
            color: lightPrimary),
        centerTitle: true,
        backgroundColor:  Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        )
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor:darkPrimary,
      background: darkPrimary,

      primary:darkPrimary,
      secondary:darksecondary,
    ),
    useMaterial3: true,
    dividerColor: darksecondary,
  );
}