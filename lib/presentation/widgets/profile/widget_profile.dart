import 'package:flutter/material.dart';

Widget widgetProfile(Function() onTap) {
  return GestureDetector(
    onTap: () => onTap(),
    child: Card(
      elevation: 2,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 4,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/ic_profile.png"),
            ),
            const SizedBox(width: 8),
            const Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Phone number",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_right,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
