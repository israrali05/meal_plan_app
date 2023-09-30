class Recipe {
  final int id;
  final String name;
  final String category;
  final String description;
  final String image;
  final String ingredient;

  Recipe(
      {required this.id,
      required this.category,
      required this.ingredient,
      required this.name,
      required this.description,
      required this.image});
}
