import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:eccomerce_templete_app/components/price_text.dart';
import 'package:eccomerce_templete_app/modules/cart/cart_item/cart_Item.dart';
import 'package:flutter/material.dart';
import '../../components/screen_header.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> productInfo = [
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Nike Shoes',
      'type': 'Trending Now',
      'price': 200.0
    },
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Adidas Sneakers',
      'type': 'Best Seller',
      'price': 220.0
    },
    {
      'image': 'assets/images/nikeImg.png',
      'name': 'Puma Running',
      'type': 'Trending Now',
      'price': 240.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          screenHeader('Shipping', 'Cart', true),
          // const CartItem(),
          SizedBox(
            height: 300,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
              itemCount: productInfo.length,
              itemBuilder: (context, index) {
                final productCardInfo = productInfo[index];

                return CartItem(
                  img: productCardInfo['image'],
                  productName: productCardInfo['name'],
                  productPrice: productCardInfo['price'],
                );
              },
            ),
          ),
          const Divider(
            color: borderColor,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3 Items',
                  style: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.w500),
                ),
                const PriceText(productPrice: 650.00 , dollerSignColor: Colors.black,dollerSignSize: 20,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, // Background color
                elevation: 5, // Elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0), // Padding
              ), // Set the background color
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
