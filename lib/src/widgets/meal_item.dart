import 'package:flutter/material.dart';
import 'package:my_recipes/src/models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  MealItem(this.meal);

  String get complexityText {
    String text;
    switch (meal.complexity) {
      case Complexity.Simple:
        text = 'Simple';
        break;
      case Complexity.Hard:
        text = 'Hard';
        break;
      case Complexity.Challenging:
        text = 'Challenging';
        break;
    }

    return text;
  }

  String get affordabilityText {
    String text;
    switch (meal.affordability) {
      case Affordability.Affordable:
        text = 'Affordable';
        break;
      case Affordability.Luxurious:
        text = 'Luxurious';
        break;
      case Affordability.Pricey:
        text = 'Pricey';
        break;
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Container(
                    color: Colors.black54,
                    width: 250,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      meal.title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text(meal.duration.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6),
                      Text(affordabilityText),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
