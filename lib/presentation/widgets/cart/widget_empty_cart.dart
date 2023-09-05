
import 'package:flutter/material.dart';

import '../../../theme/strings.dart';

Widget widgetEmptyCart(Function() onTap) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.shopping_cart,
          color: Colors.blue,
          size: 130,
        ),
        const SizedBox(height: 14),
        const Text(
          "Savatda hozircha mahsulot yo'q",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          string_cart,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 14),
        FilledButton(
          onPressed: () => onTap(),
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.blue),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          child: const Text(
            "Bosh sahifa",
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    ),
  );
}
