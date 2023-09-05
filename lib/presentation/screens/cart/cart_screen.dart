import 'package:asaxiy_clone/main_provider.dart';
import 'package:asaxiy_clone/presentation/screens/cart/bloc/cart_bloc.dart';
import 'package:asaxiy_clone/presentation/widgets/cart/widget_empty_cart.dart';
import 'package:asaxiy_clone/presentation/widgets/cart/widget_saved_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../data/model_db/product_model_db.dart';
import '../../../data/source/local/local_db.dart';
import '../../../di/di.dart';
import '../../../theme/colors.dart';
import '../../../utils/output_utils.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final _bloc = CartBloc();
  final scrollController = ScrollController();

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Savatcha"),
            ),
            body: Container(
              color: background,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ValueListenableBuilder(
                valueListenable: di.get<DB>().box.listenable(),
                builder: (context, items, child) {
                  List<int> keys = items.keys.cast<int>().toList();

                  _bloc.add(CartEvent.totalCount(keys.length));
                  _bloc.add(CartEvent.totalSum(keys, items));

                  if (keys.isEmpty) {
                    _bloc.add(const CartEvent.changeBNvisibility(false));
                  } else {
                    _bloc.add(const CartEvent.changeBNvisibility(true));
                  }

                  return keys.isEmpty
                      ? widgetEmptyCart(
                          () => di.get<MainProvider>().onItemTapped(0))
                      : ListView.builder(
                          controller: scrollController,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(8),
                          scrollDirection: Axis.vertical,
                          itemCount: keys.length,
                          itemBuilder: (_, index) {
                            final int key = keys[index];
                            final ProductModelDB data = items.get(key) ??
                                ProductModelDB("", "", "", 0, 0, "", [], "");

                            return WidgetSavedProductItem(
                              data: data,
                              onDeleteTap: () {
                                di.get<DB>().box.delete(key);
                                toast("Item deleted");
                              },
                              onMinusTap: () {
                                // minus
                                toast("Minus");
                              },
                              onPlusTap: () {
                                // plus
                                toast("Plus");
                              },
                            );
                          },
                        );
                },
              ),
            ),
            bottomNavigationBar: Container(
              color: background,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Visibility(
                visible: state.isVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Total: ${state.totalSum} so'm",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () => toast("Coming soon..."),
                      child: const Text(
                        "Buyurtma berish",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
