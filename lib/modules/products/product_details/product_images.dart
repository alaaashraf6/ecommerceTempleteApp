import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages( { super.key,   required this.productImage});
  final String productImage  ;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  final List<String> imgList = [
    'assets/images/nikeImg.png',
    'assets/images/nikeImg4.png',
    'assets/images/nikeImg.png',
    'assets/images/nikeImg4.png',
  ];
  String selecctedImage = '';
  int selecctedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 10),
      child: Column(
        children: [
          // Main image
          Container(
            child: Image.asset(
              selecctedImage.isEmpty ? widget.productImage : selecctedImage  ,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList
                  .asMap()
                  .map((index, imagePath) {
                    return MapEntry(
                        index,
                        GestureDetector(
                          onTap: () {
                           setState(() {
                             selecctedImage =imagePath ;
                             selecctedIndex =index ;
                           });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: selecctedIndex == index ? primaryColor  : Colors.grey) ,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              imagePath,
                              height: 40,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ));
                  })
                  .values
                  .toList()),
        ],
      ),
    );
  }
}
