import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Stack(alignment: Alignment.topRight, children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color.fromRGBO(234, 234, 234, 1),
              ),
              width: 50,
              height: 50,
            ),
            Container(
              width: 100,
              padding: const EdgeInsetsDirectional.only(start: 20, bottom: 50),
              child: Transform.rotate(
                angle: -0.6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/nikeImg4.png',
                    width: 50,
                  ),
                ),
              ),
            ),
          ]),
          const Column(
            children: [Text('product name'), Text('price')],
          ),
          Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(234, 234, 234, 1)),
            child: const Text('x1'),
          )
        ],
      ),
    );
  }
}
