import 'package:eccomerce_templete_app/Constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryHorizentalList extends StatefulWidget {
  const CategoryHorizentalList({super.key, this.noText = false});
  final bool noText;

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
        height: 50,
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
                  setState(() {
                    selectedCategoryIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10 ,),
                  margin: const EdgeInsets.only(right: 15 , bottom: 5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(selectedCategoryIndex == index ?0.1 : 0.0), 
                        spreadRadius: 1, 
                        blurRadius: 7, 
                        offset: const Offset(0, 3), 
                      ),
                    ],
                    color: selectedCategoryIndex == index
                        ? Colors.white
                        : backgroundColor,
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
                      widget.noText ? const Text('') : Text(categoryName),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
