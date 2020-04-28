import 'package:cardapio_receitas/src/screens/categories_meals_screen.dart';
import 'package:cardapio_receitas/src/screens/category_screens.dart';
import 'package:cardapio_receitas/src/screens/meal_details_screens.dart';
import 'package:cardapio_receitas/src/utils/app_routes_utils.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAILS: (ctx) => MealDetailScreens(),
      },
    );
  }
}
