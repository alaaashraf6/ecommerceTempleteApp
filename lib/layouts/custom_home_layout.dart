import 'package:eccomerce_templete_app/modules/Cart/cart_screen.dart';
import 'package:eccomerce_templete_app/modules/Favorites/favorites_screen.dart';
import 'package:eccomerce_templete_app/modules/Search/search_screen.dart';
import 'package:eccomerce_templete_app/modules/products/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'package:eccomerce_templete_app/components/app_bar.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key, this.title});

  final String? title;

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _motionTabBarController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      appBar: appBarOfApp(),
      bottomNavigationBar: MotionTabBar(
        controller:
            _motionTabBarController, 
        initialSelectedTab: "Products",
        useSafeArea: true, 
        labels: const ["Products", "Search", "Cart", "Favorites"],
        icons: const [
          Icons.home,
          Icons.search,
          Icons.shopping_bag_outlined,
          Icons.favorite_border_outlined
        ],
        tabSize: 40,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.grey,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: const Color.fromRGBO(252, 108, 32, 1),
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics:
            const NeverScrollableScrollPhysics(), 
        controller: _motionTabBarController,
        children:  <Widget>[
          ProductScreen(),
          const SearchScreen(),
          const CartScreen(),
          const FavoritesScreen(),
        ],
      ),
    );
  }
}
