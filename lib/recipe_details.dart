import 'dart:ui';

import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetails extends StatefulWidget {
  static String id = 'RecipeDetailsPage';

  final Recipe recipe;
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          widget.recipe.label,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(widget.recipe.imageUrl),
            ),
            Center(
              child: Text(
                widget.recipe.label,
                style: const TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrangeAccent,
                      gradient: const RadialGradient(
                        radius: 5,
                        colors: [
                          Colors.deepOrange,
                          Colors.orange,
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      ' ${ingredient.quantity * _sliderVal} ${ingredient.measure}${ingredient.name}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.orange,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
