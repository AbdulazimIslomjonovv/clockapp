
import 'package:clockapp/services/init_service.dart';
import 'package:clockapp/test/test_1.dart';
import 'package:clockapp/utils/app_styles/app_theme.dart';
import 'package:clockapp/views/root/root.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await InitService.init;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context, _) {
        final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          themeMode: themeProvider.themeMode,
          darkTheme: AppTheme.darkTheme(context),
          theme: AppTheme.lightTheme(context),
          home: const Notifications(),
        );
      },
      create: (BuildContext context) => ThemeProvider(),
    );
  }
}
