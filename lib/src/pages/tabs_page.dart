import 'package:flutter/material.dart';
import 'package:my_recipes/src/pages/categories_page.dart';
import 'package:my_recipes/src/pages/license_page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Recipes'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.info),
              text: 'License',
            ),
          ]),
        ),
        body: TabBarView(children: [
          CategoriesPage(),
          MyLicensePage(),
        ]),
      ),
    );
  }
}
