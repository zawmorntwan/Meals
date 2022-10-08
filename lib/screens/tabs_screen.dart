import 'package:flutter/material.dart';

import '../constance.dart';
import '../widgets/drawer.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorite',
    }
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'],
          style: Theme.of(context).textTheme.titleLarge,
        ),
        // bottom: TabBar(
        //   indicatorColor: Colors.black,
        //   unselectedLabelColor: Colors.grey,
        //   indicator: UnderlineTabIndicator(
        //     borderSide: BorderSide(color: highLightColor, width: 3.0),
        //     insets: const EdgeInsets.fromLTRB(60.0, 40.0, 60.0, 0.0),
        //   ),
        //   tabs: const [
        //     Tab(
        //       text: 'Categories',
        //     ),
        //     Tab(
        //       text: 'Favorites',
        //     ),
        //   ],
        // ),
      ),
      drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: primaryColor,
        elevation: 0,
        selectedIconTheme: const IconThemeData(opacity: 0.0, size: 0),
        unselectedIconTheme: const IconThemeData(opacity: 0.0, size: 0),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 22,
        unselectedFontSize: 18,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: 'Favorites',
          )
        ],
      ),
    );
  }
}
