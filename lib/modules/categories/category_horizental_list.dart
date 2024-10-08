import 'package:eccomerce_templete_app/modules/categories/category_item.dart';
import 'package:flutter/material.dart';

class CategoryHorizentalList extends StatelessWidget {
  const CategoryHorizentalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Center(child: CategoryItem()),
    );
  }
}