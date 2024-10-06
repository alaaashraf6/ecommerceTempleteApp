import 'package:eccomerce_templete_app/Components/circle_component.dart';
import 'package:flutter/material.dart';

AppBar appBarOfApp() {
  return AppBar(
    backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    leading: Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_sharp),
        iconSize: 25,
      ),
    ),
    actions: [
      CircleComponent(
        Image.asset('assets/images/profile.jpg'),
      )
    ],
  );
}
