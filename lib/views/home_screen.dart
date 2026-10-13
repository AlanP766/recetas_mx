import 'package:flutter/material.dart';
import '../data/mock_recipes.dart';
import '../models/recipe_model.dart';
import '../widgets/recipe_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Todos';
  List<Recipe> filteredRecipes = MockData.recipes;

  void filterRecipes(String category) {
    setState(() {
      selectedCategory = category;
      if (category == 'Todos') {
        filteredRecipes = MockData.recipes;
      } else {
        filteredRecipes = MockData.recipes.where((r) => r.category == category).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = ['Todos', 'Tacos', 'Sopas', 'Antojitos'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas de Cocina'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Perfil de usuario')),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          // Barra de búsqueda visual
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar receta...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // Categorías / Chips
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final cat = categories[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ChoiceChip(
                    label: Text(cat),
                    selected: selectedCategory == cat,
                    onSelected: (selected) => filterRecipes(cat),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          // Lista dinámica
          Expanded(
            child: ListView.builder(
              itemCount: filteredRecipes.length,
              itemBuilder: (context, index) {
                final recipe = filteredRecipes[index];
                return RecipeCard(
                  recipe: recipe,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(recipe: recipe),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}