import 'package:flutter/material.dart';
import 'package:quitandinha/src/shared/AppColors.dart';
import 'package:quitandinha/src/view/WelcomePage.dart';
import 'package:quitandinha/src/view/LoginPage.dart';
import 'package:quitandinha/src/view/RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor appPrimarySwatch =
        MaterialColor(AppColors.green.value, <int, Color>{
      50: AppColors.green.withOpacity(0.1),
      100: AppColors.green.withOpacity(0.2),
      200: AppColors.green.withOpacity(0.3),
      300: AppColors.green.withOpacity(0.4),
      400: AppColors.green.withOpacity(0.5),
      500: AppColors.green.withOpacity(0.6),
      600: AppColors.green.withOpacity(0.7),
      700: AppColors.green.withOpacity(0.8),
      800: AppColors.green.withOpacity(0.9),
      900: AppColors.green.withOpacity(1.0),
    });

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quitandinha',
        theme: ThemeData(
          primarySwatch: appPrimarySwatch,
          appBarTheme: AppBarTheme(
              elevation: 0, backgroundColor: AppColors.backgroundColor),
        ),
        initialRoute: WelcomePage.routeName,
        routes: {
          WelcomePage.routeName: (context) => const WelcomePage(),
          LoginPage.routeName: (context) => const LoginPage(),
          Registration.routeName: (context) => const Registration(),
        });
  }
}
