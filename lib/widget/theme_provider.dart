import 'package:book_akmar/shared/themes.dart';
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData.brightness == Brightness.dark;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData.brightness == Brightness.light) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}

final ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(),
);

final ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(),
);
