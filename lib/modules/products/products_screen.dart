import 'package:eccomerce_templete_app/components/search_comonent.dart';
import 'package:eccomerce_templete_app/modules/categories/category_horizental_list.dart';
import 'package:eccomerce_templete_app/modules/categories/category_item.dart';
import 'package:eccomerce_templete_app/modules/products/product_card/product_card_screen.dart';
import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

   List<Map<String, dynamic>> productCard = [
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Nike Shoes',
      'type': 'Sneakers',
      'price': 200.0
    },
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Adidas Sneakers',
      'type': 'Casual',
      'price': 220.0
    },
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Puma Running',
      'type': 'Sports',
      'price': 240.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(flex: 1, child: screenHeader('Our', 'Products', false)),
          // Search
          Expanded(flex: 1, child: SearchComponent()),
          // Categories
          Expanded(child: CategoryHorizentalList()) ,
          // Product cards
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productCard.length,
              itemBuilder: (context, index) {
                return ProductCardScreen(
                    productTitle: productCard[index]['name'],
                    productType: productCard[index]['type'],
                    productPrice: productCard[index]['price'],
                    productImage: productCard[index]['image']);
              },
            ),
          ),
          
          Expanded( flex:1, child:  SizedBox(height: 100,))
        ],
      ),
    );
  }
}
