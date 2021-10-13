/// Author : Mario H.C.H.
/// CLASSNAME: RECIPE
/// PARAMETERS: String label: the name of the recipe
///             String imageUrl: the location of the image asset for the
///             given recipe.
/// DESCRIPTION: Class designed to hold recipes, their names, and their
///              the path to their picture.

class Recipe {
  // label for the recipe
  String label;
  // path to image asset
  String imageUrl;
  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spaghettiMeatballs.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/tomatoeBasilSoup.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/grilledCheese.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/chocolateChipCookies.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/tacoSalad.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/pizza.jpg',
    ),
  ];
}
