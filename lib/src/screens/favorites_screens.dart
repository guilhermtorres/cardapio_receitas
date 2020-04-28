import 'package:cardapio_receitas/src/components/meal_components.dart';
import 'package:cardapio_receitas/src/models/meal_models.dart';
import 'package:flutter/material.dart';

class FavoritesScreens extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoritesScreens(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma Refeição foi marcada como Favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealComponents(favoriteMeals[index]);
        },
      );
    }
  }
}
