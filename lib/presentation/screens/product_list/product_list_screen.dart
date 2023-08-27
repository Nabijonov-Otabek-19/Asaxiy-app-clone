import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
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
          padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 8)),
          hintText: "Search",
          focusNode: _searchFocusNode,
          controller: _searchBarController,
          leading: const Icon(Icons.search),
          textStyle: MaterialStatePropertyAll(TextStyle(color: gray)),
          onChanged: (value) {},
          surfaceTintColor: const MaterialStatePropertyAll(Colors.white),
          elevation: const MaterialStatePropertyAll(0.5),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
