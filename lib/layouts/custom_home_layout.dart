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
  // TabController? _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // super.dispose();
    // _motionTabBarController!.dispose();
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
            _motionTabBarController, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "Products",
        useSafeArea: true, // default: true, apply safe area wrapper
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
            const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _motionTabBarController,
        children: const <Widget>[
          ProductScreen(),
          SearchScreen(),
          CartScreen(),
          FavoritesScreen(),
        ],
      ),
    );
  }
}
