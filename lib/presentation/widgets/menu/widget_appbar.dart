import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

PreferredSizeWidget widgetAppBarMenu({
  required Function() onSearchTap,
  required Function() onIconTap,
}) {
  return AppBar(
    title: GestureDetector(
      onTap: () => onSearchTap(),
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 4),
              Text(
                "Qidirish",
                style: TextStyle(color: gray, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () => onIconTap(),
        child: Image.asset(
          "assets/images/ic_notification.png",
          width: 24,
          filterQuality: FilterQuality.medium,
          color: light_gray,
          height: 24,
        ),
      ),
      const SizedBox(width: 14)
    ],
  );
}
