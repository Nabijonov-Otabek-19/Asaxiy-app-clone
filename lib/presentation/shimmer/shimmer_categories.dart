import 'package:asaxiy_clone/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCategories extends StatelessWidget {
  const ShimmerCategories({super.key});

  @override
  Widget build(BuildContext context) {
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
              shrinkWrap: true,
              dragStartBehavior: DragStartBehavior.down,
              clipBehavior: Clip.hardEdge,
              itemCount: 8,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 100,
                crossAxisSpacing: 25,
                childAspectRatio: (itemWidth / itemHeight),
              ),
              itemBuilder: (context, index) {
                return GridTile(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey.withOpacity(baseColor),
                        highlightColor: Colors.grey.withOpacity(highlightColor),
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            width: itemWidth,
                            height: itemHeight,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Shimmer.fromColors(
                        baseColor: Colors.grey.withOpacity(baseColor),
                        highlightColor: Colors.grey.withOpacity(highlightColor),
                        child: Container(
                          width: 30,
                          height: 4,
                          color: Colors.white,
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
    );
  }
}
