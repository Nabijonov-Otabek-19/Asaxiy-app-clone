import 'package:flutter/material.dart';

import '../../theme/colors.dart';

PreferredSizeWidget widgetAppBarHomeMenu(String icon) {
  final TextEditingController searchBarController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  return AppBar(
    title: SearchBar(
      constraints: const BoxConstraints(maxHeight: 42, minHeight: 42),
      padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 8)),
      hintText: "Search",
      focusNode: searchFocusNode,
      controller: searchBarController,
      leading: const Icon(Icons.search),
      textStyle: MaterialStatePropertyAll(TextStyle(color: gray)),
      onChanged: (value) {},
      surfaceTintColor: const MaterialStatePropertyAll(Colors.white),
      elevation: const MaterialStatePropertyAll(0.5),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Image.asset(
          icon,
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
