import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/model/offer_model.dart';
import '../../../theme/colors.dart';

Widget widgetOffer(
  List<OfferModel> offerList,
  Function(int index) indexChange,
  int activeIndex,
) {
  final CarouselController carouselController = CarouselController();
  return Column(
    children: [
      CarouselSlider(
        carouselController: carouselController,
        options: CarouselOptions(
            onPageChanged: (index, reason) {
              indexChange(index);
            },
            height: 160,
            initialPage: 3,
            enlargeCenterPage: true,
            disableCenter: false,
            pauseAutoPlayInFiniteScroll: true,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            viewportFraction: 0.8,
            autoPlayCurve: Curves.easeInOutSine,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 400),
            scrollDirection: Axis.horizontal),
        items: offerList.map((e) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              fadeInCurve: Curves.easeInOut,
              fit: BoxFit.fill,
              imageUrl: e.imgUrl.toString(),
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
          count: 3,
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
  );
}
