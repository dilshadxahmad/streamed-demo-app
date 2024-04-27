import 'package:flutter/material.dart';
import 'package:streamed_demo_app/res/theme/app_theme.dart';

class ThemeController extends ChangeNotifier {
  ThemeData _themeData = AppTheme.darkTheme();

  ThemeData get themeData => _themeData;

  bool _isDark = true;

  bool get isDark => _isDark;

  void setTheme(ThemeData theme, bool isDark) {
    _isDark = isDark;
    _themeData = theme;
    notifyListeners();
  }
}
