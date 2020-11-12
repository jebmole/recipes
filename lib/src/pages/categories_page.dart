import 'package:flutter/material.dart';
import 'package:my_recipes/src/models/category.dart';
import 'package:my_recipes/src/widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  final List<Category> _categoriesList;
  CategoriesPage(this._categoriesList);
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 2,
      ),
      children: _categoriesList
          .map(
            (category) => CategoryItem(
              category.id,
              category.title,
              category.color,
            ),
          )
          .toList(),
    );
  }
}
