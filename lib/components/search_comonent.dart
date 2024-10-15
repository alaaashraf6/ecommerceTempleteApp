import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  SearchComponent({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                fillColor: borderColor,
                filled: true,
                border: InputBorder.none,
                hintText: 'Search product',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
                contentPadding: EdgeInsets.zero,
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey[400]!,
                    width: 0.0,
                  )
                ),
              ),
            ),
          ),
          const SizedBox(width: 11.0),
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
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
