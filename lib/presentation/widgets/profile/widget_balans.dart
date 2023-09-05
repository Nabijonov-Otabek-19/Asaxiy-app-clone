import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

Widget widgetBalans(
    {required Function() onCopyTap, required Function() onBalanceTap}) {
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
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Balans:",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "0 so'm",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(flex: 1),
              Column(
                children: [
                  Text(
                    "Ball:",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "0 so'm",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(flex: 1),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 0.2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: background,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hisob raqam: A123456",
                  style: TextStyle(fontSize: 12),
                ),
                IconButton(
                    onPressed: () => onCopyTap(),
                    icon: const Icon(Icons.copy_rounded))
              ],
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(Size(500, 40)),
              side: const MaterialStatePropertyAll(
                BorderSide(width: 1, color: Colors.blue),
              ),
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              surfaceTintColor: const MaterialStatePropertyAll(Colors.white),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            onPressed: () => onBalanceTap(),
            child: const Text(
              "Hisobni to'ldirish",
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    ),
  );
}
