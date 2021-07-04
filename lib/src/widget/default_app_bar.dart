import 'package:flutter/material.dart';
import '../../core/constants/constant_color.dart';

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  DefaultAppBar({
    Key? key,
    required this.title,
    this.height = 56.0,
  })  : preferredSize = Size.fromHeight(height),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0

  @override
  _DefaultAppBarState createState() => _DefaultAppBarState();
}

class _DefaultAppBarState extends State<DefaultAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ConstantsColor.buttonShadowColor.withOpacity(0.7),
      centerTitle: true,
      brightness: Brightness.dark,
      title: Text(
        "${widget.title}",
        textAlign: TextAlign.center,
      ),
      actions: [
        //TODO:
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_rounded),
        )
      ],
    );
  }
}
