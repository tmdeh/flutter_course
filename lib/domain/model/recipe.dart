import 'dart:convert';

import 'package:flutter_coursef/domain/model/recipe_ingredient.dart';

/// =======================
/// Top-level helpers
/// =======================
RecipesResponse recipesResponseFromJson(String str) =>
    RecipesResponse.fromJson(jsonDecode(str) as Map<String, dynamic>);

String recipesResponseToJson(RecipesResponse data) => jsonEncode(data.toJson());

/// =======================
/// Models
/// =======================
class RecipesResponse {
  final List<Recipe> recipes;

  const RecipesResponse({required this.recipes});

  factory RecipesResponse.fromJson(Map<String, dynamic> json) {
    final list = (json['recipes'] as List<dynamic>? ?? const [])
        .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
        .toList();
    return RecipesResponse(recipes: list);
  }

  Map<String, dynamic> toJson() => {
    'recipes': recipes.map((e) => e.toJson()).toList(),
  };

  @override
  String toString() => 'RecipesResponse(recipes: $recipes)';
}

class Recipe {
  final int id;
  final String category;
  final String name;
  final String image;
  final String chef;
  final String time;
  final double rating;
  final List<RecipeItem> ingredients;

  const Recipe({
    required this.id,
    required this.category,
    required this.name,
    required this.image,
    required this.chef,
    required this.time,
    required this.rating,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    final items = (json['ingredients'] as List<dynamic>? ?? const [])
        .map((e) => RecipeItem.fromJson(e as Map<String, dynamic>))
        .toList();

    return Recipe(
      id: (json['id'] as num).toInt(),
      category: (json['category'] as String?) ?? '',
      name: (json['name'] as String?) ?? '',
      image: (json['image'] as String?) ?? '',
      chef: (json['chef'] as String?) ?? '',
      time: (json['time'] as String?) ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      ingredients: items,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'category': category,
    'name': name,
    'image': image,
    'chef': chef,
    'time': time,
    'rating': rating,
    'ingredients': ingredients.map((e) => e.toJson()).toList(),
  };

  @override
  String toString() =>
      'Recipe(id: $id, category: $category, name: $name, chef: $chef, '
          'time: $time, rating: $rating, ingredients: $ingredients)';
}

class RecipeItem {
  final RecipeIngredient ingredient;
  final int amount;

  const RecipeItem({
    required this.ingredient,
    required this.amount,
  });

  factory RecipeItem.fromJson(Map<String, dynamic> json) {
    return RecipeItem(
      ingredient:
      RecipeIngredient.fromJson((json['ingredient'] as Map<String, dynamic>?) ?? const {}),
      amount: (json['amount'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
    'ingredient': ingredient.toJson(),
    'amount': amount,
  };

  @override
  String toString() =>
      'RecipeItem(ingredient: $ingredient, amount: $amount)';
}

