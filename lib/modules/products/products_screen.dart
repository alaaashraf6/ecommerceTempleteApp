import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          screenHeader('Our', 'Products', false),
          const Text('Product Screen'),
        ],
      ),
    );
  }
}
