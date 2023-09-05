import 'package:flutter/material.dart';

Widget widgetSecondColumn({
  required Function() blogTap,
  required Function() savollarTap,
  required Function() taklifTap,
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
                    Icons.newspaper_outlined,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Blog",
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
            onTap: () => blogTap(),
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
                      "Ko'p so'raladigan savollar",
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
            onTap: () => savollarTap(),
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
                    Icons.share_outlined,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Do'stlarni taklif qilish",
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
            onTap: () => taklifTap(),
          ),
        ],
      ),
    ),
  );
}
