import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
Widget CircleComponent(
    {required Widget child,
    double width = 50.0,
    double height = 50.0,
    Color color = Colors.white,
    shasow = false}) {
  return Container(
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      // color: color,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: CircleAvatar(
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer, // to clip image
        child: child,
      ),
    ),
  );
}
