import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:meals/constance.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final Function removeItem;
  const MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.removeItem,
    Key? key,
  }) : super(key: key);

  String get complexityText {
    if (complexity == Complexity.simple) {
      return 'Simple';
    } else if (complexity == Complexity.challenging) {
      return 'Challenging';
    } else {
      return 'Hard';
    }
  }

  String get affordabilityText {
    if (affordability == Affordability.affordable) {
      return 'Affordable';
    } else if (complexity == Affordability.pricey) {
      return 'Pricey';
    } else {
      return 'Expensive';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetailScreen.routeName, arguments: id).then((result) {
      if(result != null) {
        removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: buildPhoto(context, imageUrl),
                ),
                Positioned(
                  bottom: 5,
                  child: Container(
                    // decoration: const BoxDecoration(
                    //   color: Colors.black54,
                    //   borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(15),
                    //     bottomRight: Radius.circular(15),
                    //   ),
                    // ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway',
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  color: primaryColor,
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  '$duration min',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'RobotoCondensed',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.work_outline,
                                  color: primaryColor,
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  complexityText,
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'RobotoCondensed',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money,
                                  color: primaryColor,
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  affordabilityText,
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'RobotoCondensed',
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildPhoto(BuildContext context, String imageUrl) {
  return ShaderMask(
    shaderCallback: (bounds) => const LinearGradient(
      colors: [
        Colors.black87,
        Colors.transparent,
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).createShader(bounds),
    blendMode: BlendMode.darken,
    child: Image.network(imageUrl),
  );
}
