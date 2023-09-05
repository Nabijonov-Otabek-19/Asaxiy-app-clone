import 'package:asaxiy_clone/theme/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../data/model/models.dart';

Widget widgetCategories(List<MenuModel> list, Function(String category) onTap) {
  final controller = ScrollController();

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Container(
      color: Colors.white,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double itemWidth = constraints.maxWidth / 2;
          double itemHeight = 60;

          return GridView.builder(
            controller: controller,
            shrinkWrap: true,
            dragStartBehavior: DragStartBehavior.down,
            clipBehavior: Clip.hardEdge,
            itemCount: list.length,
            // 8
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 100,
              crossAxisSpacing: 25,
              childAspectRatio: (itemWidth / itemHeight),
            ),
            itemBuilder: (context, index) {
              final data = list[index];
              return GridTile(
                child: GestureDetector(
                  onTap: () => onTap(data.title),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: data.color,
                        surfaceTintColor: Colors.white,
                        margin: const EdgeInsets.all(4),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          width: itemWidth,
                          height: itemHeight,
                          child: Image.asset(
                            data.icon,
                            color: data.tintColor != 0 ? data.tintColor : null,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        data.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: gray,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    ),
  );
}
