import 'package:asaxiy_clone/data/model/models.dart';
import 'package:asaxiy_clone/presentation/widgets/product_list/widget_product_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget widgetProductListGrid(
    List<ProductModel> list,
    Function(ProductModel model) onTap,
    Function(ProductModel cartModel) onAddCartTap) {
  final controller = ScrollController();

  return LayoutBuilder(
    builder: (context, constraints) {
      double itemWidth = constraints.maxWidth / 2;
      double itemHeight = 170; // your requirement height

      return GridView.builder(
        controller: controller,
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        dragStartBehavior: DragStartBehavior.down,
        clipBehavior: Clip.hardEdge,
        itemCount: list.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          mainAxisExtent: 330,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: GestureDetector(
              onTap: () => onTap(list[index]),
              child: widgetProductItem(
                list[index],
                itemWidth,
                itemHeight,
                (model) => onAddCartTap(model),
              ),
            ),
          );
        },
      );
    },
  );
}
