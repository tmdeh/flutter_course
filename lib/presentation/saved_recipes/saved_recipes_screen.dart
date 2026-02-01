import 'package:flutter/material.dart';
import 'package:flutter_coursef/domain/model/recipe.dart';
import 'package:flutter_coursef/ui/text_styles.dart';

class SavedRecipesScreen extends StatelessWidget {

  final List<Recipe> recipes;

  const SavedRecipesScreen({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved recipes',
          style: TextStyles.mediumBold,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
        return Text(recipes[index].toString());
      }),
    );
  }
}
