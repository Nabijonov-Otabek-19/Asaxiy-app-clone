import 'package:asaxiy_clone/presentation/screens/cart/bloc/cart_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Bucket"),
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

                  return keys.isEmpty
                      ? const Center(
                          child: Text(
                            'No Data',
                            style: TextStyle(fontSize: 30),
                          ),
                        )
                      : ListView.builder(
                          controller: scrollController,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(8),
                          scrollDirection: Axis.vertical,
                          itemCount: keys.length,
                          itemBuilder: (_, index) {
                            final int key = keys[index];
                            final ProductModelDB data = items.get(key) ??
                                ProductModelDB(0, "", "", 0, 0, "", [], "");

                            return Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        placeholder: (context, url) =>
                                            Image.asset(
                                                "assets/gif/loading.gif"),
                                        imageUrl: data.images[0],
                                        width: 60,
                                        height: 90,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      verticalDirection: VerticalDirection.down,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                data.title,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                              icon: const Icon(
                                                Icons.delete_outline,
                                                size: 24,
                                              ),
                                              color: Colors.red,
                                              onPressed: () {
                                                // delete from DB
                                                di.get<DB>().box.delete(key);
                                                toast("Item deleted");
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            // price
                                            Text(
                                              "${data.price} so'm",
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),

                                            Row(
                                              children: [
                                                Card(
                                                  color: background,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: const Icon(
                                                    Icons.remove,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                const SizedBox(width: 6),
                                                const Text("1"),
                                                const SizedBox(width: 6),
                                                Card(
                                                  color: background,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                },
              ),
            ),
            bottomNavigationBar: Container(
              color: background,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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
          );
        },
      ),
    );
  }
}
