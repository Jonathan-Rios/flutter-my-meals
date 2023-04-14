import 'package:flutter/material.dart';

import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // ? Max width of each item
          childAspectRatio: 3 / 2, // ? More large than height
          crossAxisSpacing: 20, // ? Space between items
          mainAxisSpacing: 20, // ? Space between rows
        ),
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(category);
        }).toList(),
      ),
    );
  }
}
