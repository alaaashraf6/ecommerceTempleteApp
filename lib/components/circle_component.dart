// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget CircleComponent(Widget child) {
  return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: CircleAvatar(
        child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              // shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer, // to clip image
            child: Center(child: child)),
      ));
}
