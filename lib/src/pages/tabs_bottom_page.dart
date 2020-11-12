import 'package:flutter/material.dart';
import 'package:my_recipes/src/pages/categories_page.dart';
import 'package:my_recipes/src/pages/home_page.dart';
import 'package:my_recipes/src/pages/license_page.dart';

class TabsBottomPage extends StatefulWidget {
  @override
  _TabsBottomPageState createState() => _TabsBottomPageState();
}

class _TabsBottomPageState extends State<TabsBottomPage> {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomePage(),
      'title': 'Categories',
    },
    {
      'page': MyLicensePage(),
      'title': 'License',
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
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('License'),
            backgroundColor: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }
}
