import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          screenHeader('Shipping', 'Cart', true),
          const Text('Cart Screen'),
        ],
      ),
    );
  }
}
