import 'package:asaxiy_clone/presentation/screens/search/search_screen.dart';
import 'package:asaxiy_clone/presentation/widgets/menu/widget_menu_list.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../utils/constants.dart';
import '../../widgets/home/widget_appbar.dart';
import '../../widgets/menu/widget_appbar.dart';
import '../product_list/product_list_screen.dart';

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
      appBar: widgetAppBarMenu(
        onSearchTap: () {
          // navigate to search screen
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchScreen(),
              ));
        },
        onIconTap: () {
          // navigate to Blog screen
        },
      ),
      body: Container(
        color: background,
        child: widgetMenuList(categoryBolimlar, (category) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductListScreen(category: category)));
        }),
      ),
    );
  }
}
