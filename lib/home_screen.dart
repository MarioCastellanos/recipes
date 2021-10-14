import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_card.dart';

///CLASSNAME: RECIPEHOMESCREEN
///PARAMETERS: NONE
///DESCRIPTION: First page user interacts with, designed to display
///             a list of recipes the user can select

class RecipesHomeScreen extends StatefulWidget {
  static String id = 'RecipesHomeScreen';
  const RecipesHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _RecipesHomeScreenState createState() => _RecipesHomeScreenState();
}

class _RecipesHomeScreenState extends State<RecipesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          'Recipes App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return RecipeCard(
              index: index,
            );
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
