import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_recipes/src/models/category.dart';

class CategoryProvider {
  String _url = 'myrecipesapi.azurewebsites.net';

  Future<List<Category>> getCategories() async {
    final url = Uri.https(_url, 'api/Categories');

    final resp = await http.post(url);
    final decodedData = json.decode(resp.body);
    List<Category> categories = new List();

    for (var item in decodedData as List<dynamic>) {
      final category = new Category.fromJson(item);
      categories.add(category);
    }

    print(categories);
    return categories;
  }
}
