import 'package:asaxiy_clone/domain/repository/repository_impl.dart';
import 'package:asaxiy_clone/presentation/screens/product_list/bloc/product_list_bloc.dart';
import 'package:asaxiy_clone/presentation/widgets/widget_productlist_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme/colors.dart';
import '../../../utils/network_call_handle.dart';
import '../../../utils/output_utils.dart';

class ProductListScreen extends StatefulWidget {
  final String category;

  const ProductListScreen({super.key, required this.category});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final _bloc = ProductListBloc(RepositoryImpl());

  final TextEditingController _searchBarController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _bloc.add(ProductListEvent.getProducts(widget.category));
  }

  @override
  void dispose() {
    _bloc.close();
    _searchBarController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) {
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
            ),
            body: Builder(
              builder: (context) {
                if (state.status == Status.LOADING ||
                    state.productList.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.status == Status.ERROR) {
                  return Center(
                    child: Text(
                      state.error,
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  );
                }
                return widgetProductListGrid(
                  state.productList,
                  () {
                    toast("Item clicked");
                    // Navigate to Detail Screen
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
