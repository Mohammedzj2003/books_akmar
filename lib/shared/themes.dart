import 'package:book_akmar/shared/colors.dart';
import 'package:flutter/material.dart';


ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color(0xfff3f3f3),
  ),
);
ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
  colorScheme: ColorScheme.light(
    background: Colors.black87,
  ),
);

// var lightTheme = ThemeData(
//   useMaterial3: true,
//
//   //Color Style Define
//   colorScheme: const ColorScheme(
//       brightness: Brightness.light,
//       primary: primaryColor,
//       onPrimary: backgroundColor,
//       secondary: secondryColor,
//       onSecondary: secondryColor,
//       error: Colors.red,
//       onError: fontColor,
//       surface: backgroundColor,
//       onSurface: fontColor
//   ),


  //Text Style Define
//   textTheme: const TextTheme(
//     headlineLarge: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 30,
//       fontWeight: FontWeight.w600,
//     ),
//     headlineMedium: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 20,
//       fontWeight: FontWeight.w600,
//     ),
//     bodyLarge: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 18,
//       fontWeight: FontWeight.w600,
//     ),
//     bodyMedium: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 18,
//       fontWeight: FontWeight.w500,
//     ),
//     bodySmall: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 12,
//       fontWeight: FontWeight.w500,
//     ),
//     labelLarge: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 18,
//       fontWeight: FontWeight.w400,
//     ),
//     labelMedium: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 15,
//       fontWeight: FontWeight.w400,
//     ),
//     labelSmall: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 12,
//       fontWeight: FontWeight.w400,
//     ),
//   ),
// );
