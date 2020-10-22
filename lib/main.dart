import 'package:flutter/material.dart';
import 'package:my_recipes/src/pages/categories_page.dart';
import 'package:my_recipes/src/pages/category_meals_page.dart';
import 'package:my_recipes/src/pages/tabs_bottom_page.dart';
import 'package:my_recipes/src/pages/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Recipes",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsBottomPage(),
        '/category-meals': (ctx) => CategoryMealsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
