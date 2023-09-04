import 'package:asaxiy_clone/data/model/models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

Widget widgetProductItem(ProductModel model, double itemWidth,
    double itemHeight, Function(ProductModel model) onAddCartTap) {
  return Card(
    elevation: 4,
    surfaceTintColor: Colors.white,
    margin: const EdgeInsets.all(2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: itemWidth,
            height: itemHeight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                placeholder: (context, url) =>
                    Image.asset("assets/gif/loading.gif"),
                imageUrl: model.images[0],
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            model.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: gray,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(flex: 1),
          Text(
            "${model.price} so'm",
            style: TextStyle(
              color: gray,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            "10000 so'm / 12 oy",
            style: TextStyle(
              fontSize: 12,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(flex: 1),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 24,
                  ),
                  Text(
                    "${model.stars}",
                    style: TextStyle(
                      color: gray,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconButton(
                visualDensity: VisualDensity.comfortable,
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(4),
                  shadowColor: MaterialStatePropertyAll(Colors.black),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  onAddCartTap(model);
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
