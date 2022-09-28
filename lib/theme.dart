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
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'RobotoCondensed',
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.w200,
        fontFamily: 'RobotoCondensed',
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.w200,
        fontFamily: 'RobotoCondensed',
      ),
    ),
  );
}

// ThemeData getTheme() {
//   return ThemeData(
//     colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
//     canvasColor: const Color.fromARGB(255, 254, 229, 1),
//     fontFamily: 'Raleway',
//     textTheme: ThemeData.light().textTheme.copyWith(
//           // bodyText1: const TextStyle(
//           //   color: Color.fromARGB(20, 51, 51, 1),
//           // ),
//           // bodyText2: const TextStyle(
//           //   color: Color.fromARGB(20, 51, 51, 1),
//           // ),
//           titleLarge: const TextStyle(
//             fontSize: 24.0,
//             fontFamily: 'RobotoCondensed',
//           ),
//         ), 
//   );
// }
