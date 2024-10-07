import 'package:eccomerce_templete_app/modules/products/product_card/product_card_screen.dart';
import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          screenHeader('Our', 'Products', false),
          const Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCardScreen(
                    productTitle: 'NIKE AIE MAX 200',
                    productType: 'Trending now',
                    productPrice: 240.00,
                    productImage: 'assets/images/nikeImg3.jpg',
                  ),
                  ProductCardScreen(
                    productTitle: 'Nick Air Max 97',
                    productType: 'Best Seller',
                    productPrice: 220.00,
                    productImage: 'assets/images/nikeImg2.jpg',
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
