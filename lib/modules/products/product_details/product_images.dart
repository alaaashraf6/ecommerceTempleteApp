import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key, required this.productImage});
  final String productImage;

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
  int selecctedIndex =1 ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 10),
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              alignment: Alignment.center,
              children: [
              SizedBox(
                 height: 150,
                child: Text(
                  'AIR',
                  style: TextStyle(
                      fontSize: 100,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                selecctedImage.isEmpty ? widget.productImage : selecctedImage,
                height: 250,
                fit: BoxFit.contain,
              ),
            ]),
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
                              selecctedImage = imagePath;
                              selecctedIndex = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: selecctedIndex == index
                                        ? primaryColor
                                        : borderColor,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
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
