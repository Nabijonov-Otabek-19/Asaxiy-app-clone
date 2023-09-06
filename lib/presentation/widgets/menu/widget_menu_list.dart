import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../data/model/models.dart';
import '../../../theme/colors.dart';

Widget widgetMenuList(List<MenuModel> list, Function(String category) onTap) {
  final controller = ScrollController();

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double itemWidth = constraints.maxWidth / 2;
          double itemHeight = 90; // your requirement height

          return GridView.builder(
            controller: controller,
            shrinkWrap: true,
            dragStartBehavior: DragStartBehavior.down,
            clipBehavior: Clip.hardEdge,
            itemCount: list.length,
            // 16
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 150,
              childAspectRatio: (itemWidth / itemHeight),
            ),
            itemBuilder: (context, index) {
              final data = list[index];
              return GridTile(
                child: GestureDetector(
                 onTap: () => onTap(data.title),
                  child: Card(
                    elevation: 1,
                    surfaceTintColor: Colors.white,
                    margin: const EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          width: itemWidth,
                          height: itemHeight,
                          child: Image.asset(
                            data.icon,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            data.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: gray,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
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
