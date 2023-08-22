import 'package:asaxiy_clone/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          constraints: const BoxConstraints(maxHeight: 56),
          padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 8)),
          hintText: "Search",
          focusNode: searchFocusNode,
          controller: _controller,
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
          Image.asset(
            "assets/images/ic_menu.png",
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 14)
        ],
      ),
      body: GestureDetector(
        onTap: () {
          searchFocusNode.unfocus();
        },
        child: Container(
          width: double.infinity,
          color: background,
        ),
      ),
    );
  }
}
