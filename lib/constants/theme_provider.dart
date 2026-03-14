import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDark;
  final VoidCallback toggleTheme;

  const ThemeProvider({
    required this.isDark,
    required this.toggleTheme,
    required super.child,
  });

  // This allows any widget to access ThemeProvider
  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return isDark != oldWidget.isDark;
  }
}