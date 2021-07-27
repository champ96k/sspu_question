import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../core/services/route_service.dart';

class BannerImage extends StatefulWidget {
  final List<BannerInfo?>? bannerInfo;

  const BannerImage({
    Key? key,
    this.bannerInfo,
  }) : super(key: key);

  @override
  _BannerImageState createState() => _BannerImageState();
}

class _BannerImageState extends State<BannerImage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: true,
        height: size.height * 0.18,
        viewportFraction: 1.0,
        autoPlay: true,
        scrollPhysics: const ScrollPhysics(),
        autoPlayInterval: const Duration(seconds: 6),
        autoPlayAnimationDuration: const Duration(milliseconds: 1200),
      ),
      items: widget.bannerInfo!.map((i) {
        return GestureDetector(
          onTap: () {
            try {
              RouteService.handleTapAction(context, tapAction: i?.tapAction);
            } catch (e) {
              log(e.toString());
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: "${i?.thumbnailImage}",
                width: size.width * 0.92,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
