import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/core.dart';

class BannerImage extends StatelessWidget {
  final List<BannerInfo?>? bannerInfo;

  const BannerImage({
    Key? key,
    this.bannerInfo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.20,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: bannerInfo!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: "${bannerInfo![index]!.thumbnailImage}",
                width: size.width * 0.92,
              ),
            ),
          );
        },
      ),
    );
  }
}
