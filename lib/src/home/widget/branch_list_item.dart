import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BranchListItem extends StatelessWidget {
  final Function onTab;
  final Color cardColor;
  final String title;
  final String imageUrl;

  const BranchListItem({
    Key key,
    @required this.onTab,
    @required this.cardColor,
    this.title = '',
    @required this.imageUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTab,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: size.height * 0.12,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: cardColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width * 0.6,
                child: Wrap(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.75,
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  width: size.width * 0.22,
                  height: size.height * 0.08,
                  fit: BoxFit.cover,
                  imageUrl: imageUrl,
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
