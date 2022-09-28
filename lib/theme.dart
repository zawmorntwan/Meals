import 'package:flutter/material.dart';

import 'constance.dart';

ThemeData getTheme() {
  return ThemeData(
    primaryColor: primaryColor,

    scaffoldBackgroundColor: primaryColor,

    // App Bar
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),

  );
}
