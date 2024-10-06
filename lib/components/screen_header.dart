import 'package:flutter/material.dart';

Widget screenHeader(
    String additionTitle, String screenTitle, bool additionalIcon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            additionTitle,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            screenTitle,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      additionalIcon
          ? const Icon(Icons.delete_outline,
              color: Color.fromRGBO(252, 108, 32, 1))
          : const SizedBox(
              width: 1,
            )
    ]),
  );
}
