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
      child: Card(
      
          color: Colors.white,
          child: Container(
            height: 200,
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
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 150, // Define a height for the container
                    child: Center(
                      // Center the image within the container
                      child: Transform.rotate(
                        angle: -0.3,
                        child: Image.asset(
                          productImage,
                          width: 200,
                        ),
                      ),
                    ),
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
                      color: Color.fromRGBO(252, 108, 32, 1),
                    ),
                  ),
                  PriceText(productPrice: productPrice)
                ]),
          )),
    );
  }
}
