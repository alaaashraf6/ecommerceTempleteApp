import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomerce_templete_app/components/search_comonent.dart';
import 'package:eccomerce_templete_app/modules/categories/category_horizental_list.dart';
import 'package:eccomerce_templete_app/modules/products/product_card/product_card_screen.dart';
import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Map<String, dynamic>> productCards = [
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Nike Shoes',
      'type': 'Trending Now',
      'price': 200.0
    },
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Adidas Sneakers',
      'type': 'Best Seller',
      'price': 220.0
    },
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Puma Running',
      'type': 'Trending Now',
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
          const CategoryHorizentalList(),
          // Product cards
        
          // SizedBox(

          //   // height: 260,
          //   child: Padding(
          //     padding: const EdgeInsetsDirectional.only(top: 30),
          //     child: ListView.separated(
          //       separatorBuilder: (context, index) {
          //         return const SizedBox(
          //           width: 25,
          //         );
          //       },
          //       scrollDirection: Axis.horizontal,
          //       itemCount: productCards.length,
          //       itemBuilder: (context, index) {
          //         return productCardsScreen(
          //           productTitle: productCards[index]['name'],
          //           productType: productCards[index]['type'],
          //           productPrice: productCards[index]['price'],
          //           productImage: productCards[index]['image'],
          //         );
          //       },
          //     ),
          //   ),
          // ),
          CarouselSlider(
            
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.5, 
                // aspectRatio: 16 / 9,
                // viewportFraction: 0.8,
              ),
              items: productCards
                  .map((item ) => Container(
                        // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: ProductCardScreen(productTitle: item['name'], productType: item['type'], productPrice: item['price'], productImage: item['image'])
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
