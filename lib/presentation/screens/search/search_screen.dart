import 'package:asaxiy_clone/presentation/screens/search/bloc/search_bloc.dart';
import 'package:asaxiy_clone/utils/output_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchBarController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  final _bloc = SearchBloc();

  @override
  void dispose() {
    _searchBarController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: SearchBar(
                constraints: const BoxConstraints(
                  maxHeight: 42,
                  minHeight: 42,
                ),
                padding: const WidgetStatePropertyAll(EdgeInsets.only(left: 8)),
                hintText: "Search",
                focusNode: _searchFocusNode,
                controller: _searchBarController,
                leading: const Icon(Icons.search),
                textStyle: WidgetStatePropertyAll(TextStyle(color: gray)),
                onChanged: (value) {
                  // get value and get products
                  logger(value);
                },
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
                surfaceTintColor: const WidgetStatePropertyAll(Colors.white),
                elevation: const WidgetStatePropertyAll(0.5),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            body: Container(),
          );
        },
      ),
    );
  }
}
