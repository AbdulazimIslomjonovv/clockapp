import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark: ThemeMode.light;
    notifyListeners();
  }
}

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    scaffoldBackgroundColor: const Color(0xffE2E4EA),
    textTheme: Theme.of(context).textTheme.apply(
      bodyColor: const Color(0xff646E82),
    ),
  );
  static  ThemeData darkTheme(BuildContext context) => ThemeData(
    scaffoldBackgroundColor: const Color(0xff363E46),
    colorScheme: const ColorScheme.light(
      primary: Color(0xff8E98A1),
    ),
    textTheme: Theme.of(context).textTheme.apply(
      bodyColor: Colors.white,
    ),
  );
}
