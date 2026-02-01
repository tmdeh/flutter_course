import 'package:flutter/material.dart';
import 'package:flutter_coursef/core/presentation/components/big_button.dart';
import 'package:flutter_coursef/core/presentation/components/filter_button.dart';
import 'package:flutter_coursef/core/presentation/components/input_field.dart';
import 'package:flutter_coursef/core/presentation/components/medium_button.dart';
import 'package:flutter_coursef/core/presentation/components/rating_button.dart';
import 'package:flutter_coursef/core/presentation/components/small_button.dart';
import 'package:flutter_coursef/core/presentation/components/two_tab.dart';
import 'package:flutter_coursef/core/presentation/dialogs/rating_dialog.dart';
import 'package:flutter_coursef/data/repository/mock_bookmark_repository_impl.dart';
import 'package:flutter_coursef/data/repository/mock_recipe_repository_impl.dart';
import 'package:flutter_coursef/domain/model/recipe.dart';
import 'package:flutter_coursef/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:flutter_coursef/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:flutter_coursef/presentation/sign_in/sign_in_screen.dart';
import 'package:flutter_coursef/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: FutureBuilder<List<Recipe>>(
        future: GetSavedRecipesUseCase(
            recipeRepository: MockRecipeRepositoryImpl(),
            bookmarkRepository: MockBookmarkRepositoryImpl(),).execute(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if(snapshot.hasError) {
            return const Center(child: Text('Error'));
          }

          final recipes = snapshot.data!;

          return SavedRecipesScreen(recipes: recipes,);
        }
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("components", style: TextStyles.largeBold)),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return RatingDialog(
                    title: 'Rate recipe',
                    score: 3,
                    actionName: 'Send',
                    onChange: (int score) {
                      print(score);
                    },
                  );
                },
              );
            },
            child: const Text('Rating Dialog'),
          ),
          TwoTab(
            labels: ['label_1', 'label_2'],
            onChange: (int index) {
              print("TwoTab  : $index");
            },
            selectedIndex: 0,
          ),
          FilterButton('text'),
          FilterButton('text', isSelected: true),
          RatingButton('text'),
          RatingButton('text', isSelected: true),
          Padding(
            padding:EdgeInsets.all(8.0),
            child: BigButton('Big Button', () {
              print('Big Button');
            }),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: MediumButton('Medium', () {
              print('Medium Button');
            }),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SmallButton('Small Button', onPressed: () {
              print('Small Button');
            }),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InputField(label: 'label', placeHolder: 'placeHolder'),
          ),
        ],
      ),
    );
  }
}

