import 'package:flutter/material.dart';
import '../../core/app_config/screen_name.dart';
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
        PopupMenuButton(
          onSelected: (value) {
            if (value == 1) {
              Navigator.of(context).pushNamed(ScreenName.feedbackScreen);
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              child: Text("Feedback"),
              value: 1,
            ),
            const PopupMenuItem(
              child: Text("Rate us"),
              value: 2,
            ),
            const PopupMenuItem(
              child: Text("Share this app"),
              value: 3,
            ),
          ],
        ),
      ],
    );
  }
}
