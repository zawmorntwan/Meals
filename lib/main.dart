import 'package:flutter/material.dart';

import 'constance.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: getTheme(),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
