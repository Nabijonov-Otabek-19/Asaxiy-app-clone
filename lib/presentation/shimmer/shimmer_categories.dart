import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOffers extends StatelessWidget {
  const ShimmerOffers({super.key});

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
              itemCount: 10,
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
                        baseColor: Colors.grey.withOpacity(0.1),
                        highlightColor: Colors.grey.withOpacity(0.3),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          width: itemWidth,
                          height: itemHeight,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Shimmer.fromColors(
                        baseColor: Colors.grey.withOpacity(0.1),
                        highlightColor: Colors.grey.withOpacity(0.3),
                        child: Container(
                          width: 150,
                          height: 25,
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
