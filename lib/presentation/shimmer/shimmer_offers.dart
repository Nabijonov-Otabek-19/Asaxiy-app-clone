import 'package:asaxiy_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOffers extends StatelessWidget {
  const ShimmerOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(baseColor),
          highlightColor: Colors.grey.withOpacity(highlightColor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const SizedBox(
              width: 200,
              height: 160,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(baseColor),
          highlightColor: Colors.grey.withOpacity(highlightColor),
          child: const SizedBox(
            width: 30,
            height: 4,
          ),
        ),
      ],
    );
  }
}
