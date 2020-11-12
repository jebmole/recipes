import 'package:flutter/material.dart';
import 'package:my_recipes/src/pages/categories_page.dart';
import 'package:my_recipes/src/providers/category_provider.dart';

class HomePage extends StatelessWidget {
  final provider = new CategoryProvider();

  @override
  Widget build(BuildContext context) {
    return _getCategoriesPage();
  }

  Widget _getCategoriesPage() {
    return FutureBuilder(
      future: provider.getCategories(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return CategoriesPage(
            snapshot.data,
          );
        } else {
          return Container(
            height: 400.0,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
