import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:eccomerce_templete_app/modules/products/product_details/available_sizes.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    leadingWidth: 70,
        
          backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
          leading: Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 10) ,
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(234, 234, 234, 1),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0)),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Colors.grey,
                  )),
            ),
          ),
          actions: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: const Icon(Icons.favorite,
                  color: Color.fromRGBO(252, 108, 32, 1)),
            )
          ]),
      body: Container(
        color: const Color.fromRGBO(234, 234, 234, 1),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(234, 234, 234, 1),
                ),
                child: Column(children: [Image.asset('assets/images/nikeImg4.png'), CategoryHorizentalList()]),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(20.0),
                    topStart: Radius.circular(20.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('this is text'),
                          Column(
                            children: [Text('price'), Text('Rate')],
                          )
                        ],
                      ),
                      // available sizes
                      Text('Available Sizes'),
                      Row(children: [
                        AvailableSizes(color: Colors.white),
                        AvailableSizes(
                          color: Color.fromRGBO(252, 108, 32, 1),
                        ),
                        AvailableSizes(color: Colors.white),
                        AvailableSizes(color: Colors.white),
                      ]),
                      // Colors
                      Text('Colors'),
                      // Descriptions
                      Text('Discription'),
                      Text(
                        'This is an example of multi-line text in Flutter. '
                        'If the text is too long to fit in a single line, '
                        'it will automatically wrap into multiple lines.',
                        style: TextStyle(fontSize: 18),
                        maxLines: null,
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
