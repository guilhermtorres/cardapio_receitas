import 'package:cardapio_receitas/src/models/meal_models.dart';
import 'package:flutter/material.dart';

class MealDetailScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
        ),
      ),
      body: Center(
        child: Text(
          'Detalhes da Refeição',
        ),
      ),
    );
  }
}
