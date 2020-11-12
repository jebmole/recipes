import 'package:flutter/material.dart';

class Category {
  String id;
  String title;
  Color color;

  Category({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    title = json['title'];
    String colorE = json['color'];
    switch (colorE) {
      case 'purple':
        color = Colors.purple;
        break;
      default:
        color = Colors.orange;
        break;
    }
  }
}
