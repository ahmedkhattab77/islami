import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String lang = 'ar';

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  String getBackGroundImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/dark_bg.png'
        : 'assets/images/homePage.png';
  }

  bool enableDark() {
    return currentTheme == ThemeMode.dark;
  }

  void changeLang(String newLang) {
    if (lang == newLang) return;
    lang = newLang;
    notifyListeners();
  }

  bool arabicEnable() {
    return lang == 'ar';
  }
}
