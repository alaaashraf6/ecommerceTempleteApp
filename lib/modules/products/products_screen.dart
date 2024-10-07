import 'package:eccomerce_templete_app/components/search_comonent.dart';
import 'package:eccomerce_templete_app/modules/products/product_card/product_card_screen.dart';
import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          screenHeader('Our', 'Products', false),
          // Search
          SearchComponent(), // Fixed typo here
          // Product cards
          const Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProductCardScreen(
                    productTitle: 'NIKE AIR MAX 200',
                    productType: 'Trending now',
                    productPrice: 240.00,
                    productImage:
                        'assets/images/nikeImg3.jpg', // This should now work
                  ),
                  ProductCardScreen(
                    productTitle: 'NIKE AIR MAX 97',
                    productType: 'Best Seller',
                    productPrice: 220.00,
                    productImage:
                        'assets/images/nikeImg2.jpg', // This should now work
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
