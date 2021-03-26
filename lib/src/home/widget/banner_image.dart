import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final String imageUrl;
  const BannerImage({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.20,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imageUrl,
                width: size.width * 0.92,
              ),
            ),
          );
        },
      ),
    );
  }
}
