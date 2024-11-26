import 'package:book_akmar/shared/colors.dart';
import 'package:flutter/material.dart';

ThemeData kLightMode = ThemeData(
    brightness: Brightness.light,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.green,
    selectionColor: Colors.green,
    selectionHandleColor: Colors.green,
  ),
    colorScheme: ColorScheme.light(
      primary: Color(0xfff3f3f3),
    ),
);

ThemeData kDarkMode = ThemeData(
  brightness: Brightness.dark,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.green,
    selectionColor: Colors.green,
    selectionHandleColor: Colors.green,
  ),
  colorScheme: ColorScheme.light(
    background: Colors.black87,
  ),
);
