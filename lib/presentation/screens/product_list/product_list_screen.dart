import 'package:asaxiy_clone/domain/repository/repository.dart';
import 'package:asaxiy_clone/presentation/screens/details/detail_screen.dart';
import 'package:asaxiy_clone/presentation/screens/product_list/bloc/product_list_bloc.dart';
import 'package:asaxiy_clone/presentation/shimmer/shimmer_productlist_grid.dart';
import 'package:asaxiy_clone/presentation/widgets/product_list/widget_productlist_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/di.dart';
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
  final _bloc = ProductListBloc(di.get<Repository>());

  final TextEditingController _searchBarController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _bloc.add(ProductListEvent.getProducts(widget.category));
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    _searchFocusNode.dispose();
    _scrollController.dispose();
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
                if (state.status == Status.LOADING) {
                  return ShimmerProductListGrid(category: widget.category);
                } else if (state.status == Status.ERROR) {
                  logger("Screen error = ${state.error}");
                  return Center(
                    child: Text(
                      state.error,
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  );
                }
                return Container(
                  color: background,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            widget.category,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/ic_menu.png",
                                width: 18,
                                height: 18,
                              ),
                              const Row(
                                children: [
                                  Text("Saralash",
                                      style: TextStyle(fontSize: 14)),
                                  Icon(Icons.keyboard_arrow_down, size: 24),
                                ],
                              ),
                              const Icon(Icons.filter_list, size: 24),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        widgetProductListGrid(
                          state.productList,
                          (model) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsScreen(model: model),
                                ));
                          },
                          (cartModel) async {
                            _bloc.add(ProductListEvent.addToCart(cartModel));
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
