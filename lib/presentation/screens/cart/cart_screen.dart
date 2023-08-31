import 'package:asaxiy_clone/theme/colors.dart';
import 'package:asaxiy_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../data/model/product_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final Box<ProductModel> box;

  @override
  void initState() {
    super.initState();
    box = Hive.box<ProductModel>(DBNAME);
  }

  @override
  void dispose() {
    box.close();
    super.dispose();
  }

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
            valueListenable: box.listenable(),
            builder: (context, items, child) {
              List<int> keys = items.keys.cast<int>().toList();

              return keys.isEmpty
                  ? const Center(
                      child: Text(
                        'No Data',
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: keys.length,
                      itemBuilder: (_, index) {
                        final int key = keys[index];

                        final ProductModel data = items.get(key) ??
                            ProductModel(0, "", "", 0, 0, "", [], "");

                        // Widget added to cart
                        return Container();
                      });
            },
          ),
        ),
      ),
    );
  }
}