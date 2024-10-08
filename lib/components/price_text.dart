import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
    required this.productPrice,
  });

  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: '\$  ', // Dollar sign
            style: TextStyle(
                color: Color.fromRGBO(252, 108, 32, 1)),
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
    );
  }
}
