/// CLASSNAME: INGREDIENT
/// PARAMETERS: NONE
/// DESCRIPTION: Represents ingredients for the recipes.

class Ingredient {
  // amount of ingredient
  double quantity;
  // the measurement being used eg. tablespoon, cup, teaspoon ...
  String measure;
  // the name of the ingredient
  String name;
  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
