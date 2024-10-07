import 'package:flutter/material.dart';

class AvailableSizes extends StatelessWidget {
   const AvailableSizes( {super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(), color: color),
      child: const Text('US 6'),
    );
  }
}
