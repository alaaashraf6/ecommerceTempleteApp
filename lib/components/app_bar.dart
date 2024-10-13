import 'package:eccomerce_templete_app/Components/circle_component.dart';
import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

AppBar appBarOfApp() {
  return AppBar(
    leadingWidth: 70,
    backgroundColor: backgroundColor,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 4),
      child: Container(
        margin: const EdgeInsets.all(8.0),
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
          iconSize: 15,
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CircleComponent(
          child: Image.asset('assets/images/profile.jpg'),
        ),
      )
    ],
  );
}
