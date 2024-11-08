import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData mobileTheme(Size size) {
  return ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: appbarColor),
    scaffoldBackgroundColor: backgroundColor,
    cardColor: partsColor,
    iconTheme: const IconThemeData(size: 30),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 22, fontFamily: 'SF'),
      titleMedium: TextStyle(fontSize: 20, fontFamily: 'SF'),
      titleSmall: TextStyle(fontSize: 18, fontFamily: 'SF'),
      bodySmall: TextStyle(fontSize: 12, fontFamily: 'SF'),
      bodyMedium: TextStyle(fontSize: 14, fontFamily: 'SF'),
      bodyLarge: TextStyle(fontSize: 16, fontFamily: 'SF'),
      displayLarge: TextStyle(fontSize: 28, fontFamily: 'SF'),
    ),
  );
}

ThemeData minyMobileTheme(Size size) {
  return ThemeData();
}

ThemeData desctopTheme(Size size) {
  return ThemeData();
}

ThemeData createThemeData(Size size, bool isWeb) {
  return switch (size.width) {
    < 370 => minyMobileTheme(size),
    < 600 => mobileTheme(size),
    < 980 => desctopTheme(size),
    _ => mobileTheme(size)
  };
}
