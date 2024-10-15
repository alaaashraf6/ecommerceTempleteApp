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
            builder: (context) => ProductDetailsScreen(
              productName: productTitle,
              productPrice: productPrice,
              productImage: productImage,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                // margin: const EdgeInsets.only(left: 20 , top: 20),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
              // ______________________________product Image______________________________
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orange[50],
                  ),
                  Positioned(
                    child: Transform.rotate(
                      angle: -0.5,
                      child: Image.asset(productImage,
                          width: 180 , ),
                    ),
                  )
                ],
              ),
              // ___________________________________product info ________________________
              Text(
                productTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                productType,
                style: const TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),

              PriceText(productPrice: productPrice),
            ],
          ),
        ),
      ),
    );
  }
}
