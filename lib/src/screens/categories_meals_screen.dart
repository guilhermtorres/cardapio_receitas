import 'package:cardapio_receitas/src/components/meal_components.dart';
import 'package:cardapio_receitas/src/models/category_models.dart';
import 'package:cardapio_receitas/src/models/meal_models.dart';
import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;
  const CategoriesMealsScreen(this.meals);
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealComponents(categoryMeals[index]);
        },
      ),
    );
  }
}
