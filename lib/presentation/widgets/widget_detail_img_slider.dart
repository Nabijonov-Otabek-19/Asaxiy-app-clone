import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../theme/colors.dart';

Widget widgetDetailImageSlider(List<String> imgList, double itemWidth,
    double itemHeight, Function(int index) indexChange, int activeIndex) {
  final CarouselController carouselController = CarouselController();

  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    child: Column(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
              onPageChanged: (index, reason) {
                indexChange(index);
              },
              height: 200,
              initialPage: imgList.length,
              enlargeCenterPage: true,
              disableCenter: true,
              pauseAutoPlayInFiniteScroll: true,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              viewportFraction: 0.8,
              autoPlayCurve: Curves.easeInOutSine,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
              scrollDirection: Axis.horizontal),
          items: imgList.map((imgUrl) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                width: itemWidth,
                height: itemHeight,
                fadeInCurve: Curves.easeInOut,
                fit: BoxFit.fill,
                imageUrl: imgUrl,
                errorWidget: (context, url, error) =>
                    Image.asset("assets/gif/loading.gif"),
                placeholder: (context, url) =>
                    Image.asset("assets/gif/loading.gif"),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: imgList.length,
            duration: const Duration(milliseconds: 500),
            effect: WormEffect(
              dotWidth: 6,
              dotHeight: 6,
              spacing: 6,
              dotColor: light_gray,
              radius: 20,
              paintStyle: PaintingStyle.stroke,
              strokeWidth: 0.5,
              activeDotColor: Colors.blue,
            ),
            onDotClicked: (index) {}),
      ],
    ),
  );
}
