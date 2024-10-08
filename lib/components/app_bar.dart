import 'package:eccomerce_templete_app/Components/circle_component.dart';
import 'package:flutter/material.dart';

AppBar appBarOfApp() {
  return AppBar(
    backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    leading: Container(
      margin: const EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_sharp),
        iconSize: 20,
      ),
    ),
    actions: [
      CircleComponent(
        child: Image.asset('assets/images/profile.jpg'),
      )
    ],
  );
}
