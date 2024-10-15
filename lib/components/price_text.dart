import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
    required this.productPrice,
    this.dollerSignColor = primaryColor,
    this.dollerSignSize = 16,
  });

  final double productPrice;
  final Color dollerSignColor;
  final double dollerSignSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '\$',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: dollerSignColor,
                fontSize: dollerSignSize),
          ),
          TextSpan(
            text: '$productPrice',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
