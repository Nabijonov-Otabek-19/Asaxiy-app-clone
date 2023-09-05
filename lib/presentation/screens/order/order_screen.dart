import 'package:asaxiy_clone/theme/colors.dart';
import 'package:asaxiy_clone/utils/output_utils.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buyurtmalar"),
        actions: [
          IconButton(
            onPressed: () {
              toast("Coming soon");
            },
            icon: const Icon(Icons.settings_outlined),
          )
        ],
      ),
      body: Container(
        color: background,
        child: const Center(
          child: Text("Order"),
        ),
      ),
    );
  }
}
