import 'package:eccomerce_templete_app/components/price_text.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem(
      {super.key,
      required this.img,
      required this.productName,
      required this.productPrice});

  final String img;
  final String productName;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(234, 234, 234, 1),
                ),
                width: 50,
                height: 50,
              ),
              Positioned(
                bottom: 20,
                child: Transform.rotate(
                  angle: -0.6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/nikeImg4.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'NIKE AIR MAX 79',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              PriceText(productPrice: 280)
            ],
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromRGBO(234, 234, 234, 1),
            ),
            child: const Center(child: Text('x1')),
          )
        ],
      ),
    );
  }
}
