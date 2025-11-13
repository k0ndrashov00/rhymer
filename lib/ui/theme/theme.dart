import 'package:flutter/material.dart';

const primaryColor = Color(0xFFF82B10);
final themeData = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: const Color(0xFFEFF1F3),
  dividerTheme: DividerThemeData(
    // ignore: deprecated_member_use
    color: Colors.grey.withOpacity(0.1),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  ),
);