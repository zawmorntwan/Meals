import 'package:flutter/material.dart';
import 'package:meals/constance.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/theme.dart';

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
      home: const CategoriesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
