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
          // ___________________________Search _____________________
          SearchComponent(),
          // _________________________Categories______________________
          const CategoryHorizentalList(),
          // _________________________Product cards____________________

          CarouselSlider(
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                disableCenter: true,
                autoPlay: true,
                viewportFraction: 0.6,
                initialPage: 0,
              ),
              items: productCards
                  .map((item) => ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: ProductCardScreen(
                          productTitle: item['name'],
                          productType: item['type'],
                          productPrice: item['price'],
                          productImage: item['image'])))
                  .toList()),
        ],
      ),
    );
  }
}
