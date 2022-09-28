import 'package:flutter/material.dart';

import '../components/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meals',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: dummyCategories
            .map(
              (data) => CategoryItem(
                data.id!,
                data.title!,
                data.color!,
              ),
            )
            .toList(),
      ),
    );
  }
}
