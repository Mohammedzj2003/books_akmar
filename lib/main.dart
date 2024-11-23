import 'package:book_akmar/page/settings_page.dart';
import 'package:book_akmar/page/splash_screen.dart';
import 'package:book_akmar/widget/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>ThemeProvider(),
  child:const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale('ar'),
        title: 'Akmar',

        home: SplashScreen(),
        theme: Provider.of<ThemeProvider>(context).themeData
    );
  }
}
