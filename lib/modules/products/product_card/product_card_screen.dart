import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:eccomerce_templete_app/components/price_text.dart';
import 'package:eccomerce_templete_app/modules/products/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductCardScreen extends StatelessWidget {
  const ProductCardScreen({
    super.key,
    required this.productTitle,
    required this.productType,
    required this.productPrice,
    required this.productImage,
  });

  final String productTitle;
  final String productType;
  final double productPrice;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen(),
          ),
        );
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20),
                  width: 150,
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
                Stack(
                alignment: Alignment.center,   
                  children: [
                    CircleAvatar(
                      radius: 40, 
                      backgroundColor:
                          Colors.orange[50], 
                    ),
                    Transform.rotate(
                      angle: -0.5,
                      child: Image.asset(
                        productImage,
                        width: 150,
                      ),
                    ),
                  ],
                ),
                Text(
                  productTitle,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  productType,
                  style: const TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                  ),
                ),
                PriceText(productPrice: productPrice)
              ])),
    );
  }
}
