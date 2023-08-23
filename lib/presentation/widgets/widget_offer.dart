import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/model/offer_model.dart';

class WidgetOffer extends StatefulWidget {
  final List<OfferModel> offerList;

  const WidgetOffer({super.key, required this.offerList});

  @override
  State<WidgetOffer> createState() => _WidgetOfferState();
}

class _WidgetOfferState extends State<WidgetOffer> {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _carouselController,
      options: CarouselOptions(
          height: 160,
          initialPage: 3,
          enlargeCenterPage: true,
          disableCenter: false,
          pauseAutoPlayInFiniteScroll: true,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          viewportFraction: 0.8,
          autoPlayCurve: Curves.easeOutQuad,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 500),
          scrollDirection: Axis.horizontal),
      items: widget.offerList.map((e) {
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
    );
  }
}
