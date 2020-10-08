import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recetas x Categoria"),
      ),
      body: Center(
        child: Text("Listado de recetas x categoria"),
      ),
    );
  }
}
