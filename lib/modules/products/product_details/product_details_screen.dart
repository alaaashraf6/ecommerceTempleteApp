import 'dart:developer';
import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:eccomerce_templete_app/components/price_text.dart';
import 'package:eccomerce_templete_app/modules/products/product_details/product_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({
    required this.productName,
    required this.productPrice,
    required this.productImage,
    super.key,
  });

  final String productName;
  final double productPrice;
  final String productImage;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedSizeIndex = 0;
  int selectedColorIndex = 0;
  List<String> sizeList = ['US 6', 'US 7', 'US 8', 'US 9'];
  List<Color> colorList = [
    primaryColor,
    Colors.deepPurpleAccent,
    Colors.black,
    Colors.pink,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    log(sizeList[0]);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        backgroundColor: Colors.grey[100],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 35,
              width: 35,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Icon(
                Icons.favorite,
                color: Color.fromRGBO(252, 108, 32, 1),
                size: 18,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              // _______________________________product images________________________

              ProductImages(productImage: widget.productImage),

              // ____________________________product info____________________________
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(30.0),
                    topStart: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.productName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            children: [
                              PriceText(
                                productPrice: widget.productPrice,
                                dollerSignSize: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: StarRating(
                                  size: 15.0,
                                  rating: 4,
                                  color: Colors.amber[600],
                                  borderColor: Colors.grey,
                                  allowHalfRating: true,
                                  starCount: 5,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // ____________________________Available  sizes ______________________________
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Available Sizes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      SizedBox(
                        height: 40,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 5);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: sizeList.length,
                          itemBuilder: (context, index) {
                            final sizeText = sizeList[index];

                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedSizeIndex = index;
                                });
                              },
                              child: Container(
                                width: 60,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                margin:
                                    const EdgeInsets.only(right: 15, bottom: 5),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.orange.withOpacity(
                                          selectedSizeIndex == index
                                              ? 0.1
                                              : 0.0),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                  color: selectedSizeIndex == index
                                      ? primaryColor
                                      : Colors.white,
                                  border: Border.all(
                                    color: selectedSizeIndex == index
                                        ? primaryColor
                                        : borderColor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    sizeText,
                                    style: TextStyle(
                                        color: selectedSizeIndex == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // __________________________Colors____________________________________________
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Colors',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50, // Set a fixed height for the size list
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 10);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: colorList.length,
                          itemBuilder: (context, index) {
                            final colorItem = colorList[index];

                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedColorIndex = index;
                                });
                              },
                              child: Center(
                                child: CircleAvatar(
                                  radius: selectedColorIndex == index ? 15 : 18,
                                  backgroundColor: colorItem.withOpacity(0.1),
                                  child: Container(
                                    width:
                                        selectedColorIndex == index ? 18 : 20,
                                    height:
                                        selectedColorIndex == index ? 18 : 20,
                                    decoration: BoxDecoration(
                                        color: colorItem,
                                        shape: BoxShape.circle,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.white, // Shadow color
                                            spreadRadius: 1,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ]),
                                    child: selectedColorIndex == index
                                        ? const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 15,
                                          )
                                        : null,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // ____________________________________________________________________________
                      // Description
                      const SizedBox(height: 10),
                      const Text('Description'),
                      const Text(
                        'This is an example of multi-line text in Flutter. '
                        'If the text is too long to fit in a single line, '
                        'If the text is too long to fit in a single line, '
                        'If the text is too long to fit in a single line, '
                        'If the text is too long to fit in a single line, '
                        'If the text is too long to fit in a single line, '
                        'it will automatically wrap into multiple lines.',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                        maxLines: null,
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
