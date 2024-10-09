import 'package:eccomerce_templete_app/components/search_comonent.dart';
import 'package:eccomerce_templete_app/modules/categories/category_horizental_list.dart';
import 'package:eccomerce_templete_app/modules/categories/category_item.dart';
import 'package:eccomerce_templete_app/modules/products/product_card/product_card_screen.dart';
import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
          
          screenHeader('Our', 'Products', false),
          // Search
          SearchComponent(),
          // Categories
          const CategoryHorizentalList() ,
          // Product cards
          SizedBox(
            height: 260,
            child: ListView.separated(
              separatorBuilder:(context , index) { return const SizedBox(width: 5,);},
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
          
        ],
      ),
    );
  }
}
