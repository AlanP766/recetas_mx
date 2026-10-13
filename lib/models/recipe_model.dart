class Recipe {
  final String id;
  final String title;
  final String category;
  final String description;
  final String imageUrl;
  final String prepTime;
  final String calories;
  final String difficulty;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.prepTime,
    required this.calories,
    required this.difficulty,
    required this.ingredients,
    required this.steps,
  });
}