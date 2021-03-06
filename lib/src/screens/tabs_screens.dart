import 'package:cardapio_receitas/src/components/drawer_components.dart';
import 'package:cardapio_receitas/src/models/meal_models.dart';
import 'package:cardapio_receitas/src/screens/category_screens.dart';
import 'package:cardapio_receitas/src/screens/favorites_screens.dart';
import 'package:flutter/material.dart';

class TabsScreens extends StatefulWidget {
  final List<Meal> _favoriteMeals;

  const TabsScreens(this._favoriteMeals);

  @override
  _TabsScreensState createState() => _TabsScreensState();
}

class _TabsScreensState extends State<TabsScreens> {
  int _selectedScreenIndex = 0;
  List<Map<String, dynamic>> _screens;

  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Lista de Categorias',
        'screen': CategoriesScreen(),
      },
      {
        'title': 'Meus Favoritos',
        'screen': FavoritesScreens(widget._favoriteMeals),
      }
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _screens[_selectedScreenIndex]['title'],
          ),
        ),
        drawer: MainDrawer(),
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedScreenIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(
                Icons.category,
              ),
              title: Text('Categorias'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(
                Icons.favorite_border,
              ),
              title: Text('Favoritos'),
            )
          ],
        ),
      ),
    );
  }
}
