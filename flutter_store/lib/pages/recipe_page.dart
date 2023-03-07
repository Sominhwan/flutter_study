import 'package:flutter/material.dart';
import 'package:flutter_store/components/recipe_list_item.dart';
import 'package:flutter_store/components/recipe_menu.dart';
import 'package:flutter_store/components/recipe_title.dart';

AppBar _buildRecipeAppBar(){
  return AppBar();
}
class RecipePage extends StatelessWidget{
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Maade Burger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }
}