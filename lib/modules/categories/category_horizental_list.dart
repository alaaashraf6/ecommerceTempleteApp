import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryHorizentalList extends StatefulWidget {
  const CategoryHorizentalList({super.key});

  @override
  State<CategoryHorizentalList> createState() => _CategoryHorizentalListState();
}

class _CategoryHorizentalListState extends State<CategoryHorizentalList> {
  int selectedCategoryIndex = 0;

  List<Map<String, dynamic>> categoryList = [
    {
      'image': 'assets/images/nikeImg.png',
      'categoryName': 'Sneakers',
    },
    {
      'image': 'assets/images/nikeImg.png',
      'categoryName': 'Whatch',
    },
    {
      'image': 'assets/images/nikeImg.png',
      'categoryName': 'Jacket',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox( 
        height: 40,
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 5,
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              final category = categoryList[index];
              final categoryName = category['categoryName'] ?? 'Unknown';

              return InkWell(
                onTap: () {
                  setState((){
                    selectedCategoryIndex = index;
                  });
                },
                child: Container(
                  height: selectedCategoryIndex == index ? 60 : 40,  // no effect
                  padding: const EdgeInsets.symmetric(horizontal: 10 ),


                  decoration: BoxDecoration(
                    color: selectedCategoryIndex == index
                          ? Colors.white
                          : backgroundColor ,
                    border: Border.all(
                      color: selectedCategoryIndex == index
                          ? primaryColor
                          : borderColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        category['image'],
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(categoryName),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
