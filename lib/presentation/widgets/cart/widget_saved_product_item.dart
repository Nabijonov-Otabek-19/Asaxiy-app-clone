import 'package:asaxiy_clone/data/model_db/product_model_db.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class WidgetSavedProductItem extends StatefulWidget {
  final ProductModelDB data;
  final Function() onDeleteTap;
  final Function() onMinusTap;
  final Function() onPlusTap;

  const WidgetSavedProductItem(
      {super.key,
      required this.data,
      required this.onDeleteTap,
      required this.onMinusTap,
      required this.onPlusTap});

  @override
  State<WidgetSavedProductItem> createState() => _WidgetSavedProductItemState();
}

class _WidgetSavedProductItemState extends State<WidgetSavedProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(4),
      child: Container(
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
                      Image.asset("assets/gif/loading.gif"),
                  imageUrl: widget.data.images[0],
                  width: 60,
                  height: 90,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          widget.data.title,
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
                          size: 26,
                        ),
                        color: Colors.red,
                        onPressed: () => widget.onDeleteTap(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // price
                      Text(
                        "${widget.data.price} so'm",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => widget.onMinusTap(),
                            child: Card(
                              elevation: 2,
                              color: background,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.blue,
                                size: 26,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text("1"),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () => widget.onPlusTap(),
                            child: Card(
                              elevation: 2,
                              color: background,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 26,
                              ),
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
      ),
    );
  }
}
