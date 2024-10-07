import 'package:eccomerce_templete_app/components/circle_component.dart';
import 'package:eccomerce_templete_app/modules/products/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  SearchComponent({super.key}); // Added const for better performance

  final TextEditingController searchController =
      TextEditingController(); // Fixed type

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 40, // Set a height for the TextFormField
            width: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            clipBehavior:
                Clip.antiAliasWithSaveLayer, // Set a width for better layout
            child: TextFormField(
              controller: searchController,
              // Assign the controller
              decoration: const InputDecoration(
                fillColor: Color.fromRGBO(234, 234, 234, 1),
                filled: true,
                border: InputBorder.none,
                hintText: 'Search product',
                prefixIcon: Icon(Icons.search),
              ),
            )),
        Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.all(8),
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
            icon: const Icon(Icons.tune),
            iconSize: 20,
          ),
        ),
      ],
    );
  }
}
