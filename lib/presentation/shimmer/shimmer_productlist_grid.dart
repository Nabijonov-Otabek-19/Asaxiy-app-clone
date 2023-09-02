import 'package:asaxiy_clone/theme/themes.dart';
import 'package:asaxiy_clone/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProductListGrid extends StatefulWidget {
  final String category;

  const ShimmerProductListGrid({super.key, required this.category});

  @override
  State<ShimmerProductListGrid> createState() => _ShimmerProductListGridState();
}

class _ShimmerProductListGridState extends State<ShimmerProductListGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Text(
                widget.category,
                textAlign: TextAlign.start,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/ic_menu.png",
                    width: 18,
                    height: 18,
                  ),
                  const Row(
                    children: [
                      Text("Saralash", style: TextStyle(fontSize: 14)),
                      Icon(Icons.keyboard_arrow_down, size: 24),
                    ],
                  ),
                  const Icon(Icons.filter_list, size: 24),
                ],
              ),
            ),
            const SizedBox(height: 8),
            LayoutBuilder(
              builder: (context, constraints) {
                double itemWidth = constraints.maxWidth / 2;
                double itemHeight = 170; // your requirement height

                return GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  dragStartBehavior: DragStartBehavior.down,
                  clipBehavior: Clip.hardEdge,
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (itemWidth / itemHeight),
                    mainAxisExtent: 330,
                  ),
                  itemBuilder: (context, index) {
                    return GridTile(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Shimmer.fromColors(
                              baseColor: Colors.grey.withOpacity(baseColor),
                              highlightColor:
                                  Colors.grey.withOpacity(highlightColor),
                              child: Card(
                                elevation: 4,
                                surfaceTintColor: Colors.white,
                                margin: const EdgeInsets.all(2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: SizedBox(
                                  width: itemWidth,
                                  height: itemHeight,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Shimmer.fromColors(
                              baseColor: Colors.grey.withOpacity(baseColor),
                              highlightColor:
                                  Colors.grey.withOpacity(highlightColor),
                              child: Container(
                                width: double.infinity,
                                height: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Shimmer.fromColors(
                              baseColor: Colors.grey.withOpacity(baseColor),
                              highlightColor:
                                  Colors.grey.withOpacity(highlightColor),
                              child: Container(
                                width: double.infinity,
                                height: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Shimmer.fromColors(
                              baseColor: Colors.grey.withOpacity(baseColor),
                              highlightColor:
                                  Colors.grey.withOpacity(highlightColor),
                              child: Container(
                                width: double.infinity,
                                height: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Shimmer.fromColors(
                                      baseColor:
                                          Colors.grey.withOpacity(baseColor),
                                      highlightColor: Colors.grey
                                          .withOpacity(highlightColor),
                                      child: const SizedBox(
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    Shimmer.fromColors(
                                      baseColor:
                                          Colors.grey.withOpacity(baseColor),
                                      highlightColor: Colors.grey
                                          .withOpacity(highlightColor),
                                      child: const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    Shimmer.fromColors(
                                      baseColor:
                                          Colors.grey.withOpacity(baseColor),
                                      highlightColor: Colors.grey
                                          .withOpacity(highlightColor),
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.grey.withOpacity(baseColor),
                                  highlightColor:
                                      Colors.grey.withOpacity(highlightColor),
                                  child: Container(
                                    width: 30,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
