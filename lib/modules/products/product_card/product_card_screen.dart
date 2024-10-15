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
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 10),
              child: const Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
            ),
            // ______________________________product Image______________________________
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.orange[50],
                  ),
                ),
                Positioned(
                  bottom: 2,
                  child: Transform.rotate(
                    angle: -0.5,
                    child: Image.asset(
                      productImage,
                      width: 120,
                    ),
                  ),
                )
              ],
            ),
            // ___________________________________product info ________________________
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                productTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                productType,
                style: const TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                ),
              ),
            ),
            PriceText(productPrice: productPrice)
          ],
        ),
      ),
    );
  }
}
