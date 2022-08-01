import 'package:clockapp/utils/app_styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeButton extends StatelessWidget {
  const ChangeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (bool bl) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(bl);
      },
    );
  }
}
