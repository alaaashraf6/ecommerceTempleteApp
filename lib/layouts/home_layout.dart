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
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List<Widget> screens = [
      const FavoritesScreen(),
      const CartScreen(),
      const SearchScreen(),
      const ProductScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: appBarOfApp(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => {
                setState(() {
                  currentIndex = index;
                })
              },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
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
