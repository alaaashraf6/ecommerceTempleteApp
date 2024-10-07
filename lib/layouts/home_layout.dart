import 'dart:developer';

import 'package:eccomerce_templete_app/Components/circle_component.dart';
import 'package:eccomerce_templete_app/components/app_bar.dart';
import 'package:eccomerce_templete_app/modules/Cart/cart_screen.dart';
import 'package:eccomerce_templete_app/modules/Favorites/favorites_screen.dart';
import 'package:eccomerce_templete_app/modules/Search/search_screen.dart';
import 'package:eccomerce_templete_app/modules/products/products_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    const ProductScreen(),
    const SearchScreen(),
    const CartScreen(),
    const FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      appBar:  appBarOfApp(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: Colors.blueAccent, // Color for selected items
          unselectedItemColor: Colors.grey, // Color for unselected items
          selectedFontSize: 14, // Font size of the selected item text
          unselectedFontSize: 12, // Font size of the unselected item text
          elevation: 10, // Shadow under the bar
          iconSize: 30, // Size of the icons
          showSelectedLabels: true, // Show the label for selected item
          showUnselectedLabels: true,
         
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Products',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favorites'),
          ]),
      body: screens[currentIndex],
    );
  }
}
