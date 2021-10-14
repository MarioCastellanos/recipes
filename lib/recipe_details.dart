import 'dart:ui';
import 'package:flutter/material.dart';
import 'recipe.dart';

///CLASSNAME: RecipeDetails
///PARAMETERS: Recipe recipe: The recipe to be displayed
///Description: Displays the recipe selected by the user and the ingredients
///             required. As well as allows the user to modify the serving size
///             while the ingredients dynamically adjust.

class RecipeDetails extends StatefulWidget {
  static String id = 'RecipeDetailsPage';

  final Recipe recipe;
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  // the initial slider value
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          // App bar that displays the recipe name
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
            // Displaying current serving size
            Center(
              child: Text(
                'Makes ${(widget.recipe.servings * _sliderVal).toString()} servings',
                style: const TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Builds the recipe list.
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
            // Slider to adjust recipe serving size.
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
