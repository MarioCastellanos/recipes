import 'package:flutter/material.dart';
import 'recipe.dart';

///CLASSNAME: RECIPECARD
///PARAMETERS: INT INDEX: The index in the listview.builder for the recipie card
///DESCRIPTION: Recipe card is designed to display the recipes objects.

class RecipeCard extends StatelessWidget {
  // The index of the recipe card in the listview.
  final int index;

  const RecipeCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              //
              child: Image.asset(
                Recipe.samples[index].imageUrl,
              ),
            ),
            // text widget used to display recipe labels.
            Text(
              Recipe.samples[index].label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1 / 2,
              blurRadius: 5,
              offset: Offset(3, 5),
            ),
          ],
          color: Colors.orange,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
    );
  }
}
