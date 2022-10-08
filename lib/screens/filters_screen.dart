import 'package:flutter/material.dart';
import 'package:meals/widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
  static String routeName = '/filters';
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filters',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      drawer: const MainDrawer(),
    );
  }
}
