import 'package:asaxiy_clone/presentation/widgets/widget_menu_list.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../utils/constants.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  final TextEditingController _searchBarController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchBarController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          constraints: const BoxConstraints(maxHeight: 42, minHeight: 42),
          padding:
          const MaterialStatePropertyAll(EdgeInsets.only(left: 8)),
          hintText: "Search",
          focusNode: _searchFocusNode,
          controller: _searchBarController,
          leading: const Icon(Icons.search),
          textStyle: MaterialStatePropertyAll(TextStyle(color: gray)),
          onChanged: (value) {},
          surfaceTintColor: const MaterialStatePropertyAll(Colors.white),
          elevation: const MaterialStatePropertyAll(0.5),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
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
      ),
      body: Container(
        color: background,
        child: widgetMenuList(categoryBolimlar, (category) {
          print(category);
        }),
      ),
    );
  }
}
