import 'package:cardapio_receitas/src/models/category_models.dart';
import 'package:flutter/material.dart';

class CategoriesComponents extends StatelessWidget {
  final Category category;

  const CategoriesComponents(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}
