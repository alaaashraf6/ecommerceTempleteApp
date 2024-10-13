import 'package:eccomerce_templete_app/modules/cart/cart_item/cart_Item.dart';
import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          screenHeader('Shipping', 'Cart', true),
          const CartItem(),
          const Divider(
            color: Color.fromRGBO(234, 234, 234, 1), // Line color
            thickness: 2, // Line thickness
            indent: 20, // Left spacing
            endIndent: 20, // Right spacing
          ),
          const Row(
            children: [
              Text('3 Items'),
              Text('Price'),
            ],
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                      252, 108, 32, 1)), // Set the background color
              child: const Text(
                'Next',
              ),
            ),
          )
        ],
      ),
    );
  }
}
