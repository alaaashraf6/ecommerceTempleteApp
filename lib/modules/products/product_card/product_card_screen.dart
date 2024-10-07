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
    return Card(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
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
                          width: 100,
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
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '\$  ', // Dollar sign
                          style:
                              TextStyle(color: Color.fromRGBO(252, 108, 32, 1)),
                        ),
                        TextSpan(
                          text: '$productPrice',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ])));
  }
}
