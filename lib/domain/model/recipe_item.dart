import 'package:flutter_coursef/domain/model/recipe_ingredient.dart';

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

