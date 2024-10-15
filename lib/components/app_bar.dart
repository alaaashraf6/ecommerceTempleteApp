import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:eccomerce_templete_app/components/circle_component.dart';
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
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), 
              spreadRadius: 0.2, 
              blurRadius: 5, 
              offset: const Offset(0, 2), 
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
        child: circleComponent(
          child: Image.asset('assets/images/profile.jpg'),
        ),
      )
    ],
  );
}
