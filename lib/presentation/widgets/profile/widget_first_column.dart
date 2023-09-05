import 'package:flutter/material.dart';

Widget widgetFirstColumn({
  required Function() darajalarTap,
  required Function() muddatliTap,
  required Function() tasdiqlashTap,
  required Function() elYurtIshonchiTap,
  required Function() kartalarimTap,
  required Function() sevimlilarTap,
}) {
  return Card(
    elevation: 2,
    margin: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    color: Colors.white,
    surfaceTintColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // xaridor darajalari
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.grade_outlined,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Xaridor darajalari",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_right),
                    onPressed: () {},
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () => darajalarTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          // muddatli to'lov
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_bag,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Muddatli to'lov",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () => muddatliTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          // profilni tasdiqlash
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Profilni tasdiqlash",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () => tasdiqlashTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          // El-yurt ishonchi
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.info_outline_rounded,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "El-yurt ishonchi",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () => elYurtIshonchiTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          // Mening kartalarim
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add_card_rounded,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Mening kartalarim",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () => kartalarimTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          // Sevimlilar
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Sevimlilar",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () => sevimlilarTap(),
          ),
        ],
      ),
    ),
  );
}
