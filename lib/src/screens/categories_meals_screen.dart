import 'package:cardapio_receitas/src/models/category_models.dart';
import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(category.title),
        ),
      ),
      body: Center(
        child: Text(
          'Receitas por Categoria ${category.id}',
        ),
      ),
    );
  }
}
