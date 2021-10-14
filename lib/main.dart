import 'package:flutter/material.dart';
import 'package:recipes/home_screen.dart';
import 'package:recipes/recipe_details.dart';
import 'package:recipes/screen_arguments.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == RecipeDetails.id) {
          final ScreenArguments args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return RecipeDetails(recipe: args.recipe);
            },
          );
        }
      },
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.orange,
          secondary: Colors.black,
        ),
      ),
      initialRoute: RecipesHomeScreen.id,
      routes: {
        RecipesHomeScreen.id: (context) => const RecipesHomeScreen(),
      },
    );
  }
}
