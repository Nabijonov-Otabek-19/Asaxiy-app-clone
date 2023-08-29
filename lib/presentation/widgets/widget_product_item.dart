import 'package:asaxiy_clone/data/model/models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

Widget widgetProductItem(
    ProductModel model, double itemWidth, double itemHeight) {
  return Card(
    elevation: 4,
    surfaceTintColor: Colors.white,
    margin: const EdgeInsets.all(4),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(4),
          padding: const EdgeInsets.all(4),
          width: itemWidth,
          height: itemHeight,
          child: CachedNetworkImage(
            placeholder: (context, url) =>
                Image.asset("assets/gif/loading.gif"),
            imageUrl: model.images[0],
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            model.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: gray,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "${model.price} so'm",
          style: TextStyle(
            color: gray,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
              Text(
                "${model.stars}",
                style: TextStyle(
                  color: gray,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
