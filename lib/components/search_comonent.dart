import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  SearchComponent({super.key}); // Added const for better performance

  final TextEditingController searchController =
      TextEditingController(); // Fixed type

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.blue,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              clipBehavior:
                  Clip.antiAliasWithSaveLayer, 
              child: TextFormField(
                controller: searchController,
                // Assign the controller
                decoration:  InputDecoration(
                  fillColor: Color.fromRGBO(234, 234, 234, 1),
                  filled: true,
                  border: InputBorder.none,
                  hintText: 'Search product',
                  hintStyle: TextStyle(fontSize: 14 ,color: Colors.grey[400]  ),
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
      ),
    );
  }
}
