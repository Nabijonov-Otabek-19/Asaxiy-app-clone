import 'package:asaxiy_clone/data/model_db/product_model_db.dart';
import 'package:asaxiy_clone/theme/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../data/source/local/local_db.dart';
import '../../../di/di.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bucket"),
      ),
      body: Container(
        color: background,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ValueListenableBuilder(
            valueListenable: di.get<DB>().box.listenable(),
            builder: (context, items, child) {
              List<int> keys = items.keys.cast<int>().toList();

              return keys.isEmpty
                  ? const Center(
                      child: Text(
                        'No Data',
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  : Container(
                      color: background,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        controller: _scrollController,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: keys.length,
                        itemBuilder: (_, index) {
                          final int key = keys[index];

                          final ProductModelDB data = items.get(key) ??
                              ProductModelDB(0, "", "", 0, 0, "", [], "");

                          // Widget added to cart
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            width: double.infinity,
                            color: background,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    placeholder: (context, url) =>
                                        Image.asset("assets/gif/loading.gif"),
                                    imageUrl: data.images[0],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Text(
                                        data.title,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        data.description,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
