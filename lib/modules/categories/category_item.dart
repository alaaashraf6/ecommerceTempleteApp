import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all() 
      ),
      child: Row(
        children: [
          Image.asset('assets/images/nikeImg.png' ,width: 40 , height: 40,) ,
          const Text('Sneakers')
        ],
      ),
    );
  }
}