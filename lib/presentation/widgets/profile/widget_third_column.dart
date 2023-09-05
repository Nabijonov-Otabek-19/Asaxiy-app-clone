import 'package:flutter/material.dart';

Widget widgetThirdColumn({
  required Function() boglanishTap,
  required Function() punktlarTap,
  required Function() tilTap,
  required Function() themeTap,
  required Function() haqimizdaTap,
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
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.headphones,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Biz bilan bog'lanish",
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
            onTap: () => boglanishTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.map,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Olib ketish punktlari",
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
            onTap: () => punktlarTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.language,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Ilova tili",
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
            onTap: () => tilTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.nightlight_outlined,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Ilova mavzusi",
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
            onTap: () => themeTap(),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.info_outline,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Biz haqimizda",
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
            onTap: () => haqimizdaTap(),
          ),
        ],
      ),
    ),
  );
}
