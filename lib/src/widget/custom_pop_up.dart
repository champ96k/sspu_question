import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPopUp extends StatefulWidget {
  final String title;
  final List<Widget> children;

  const CustomPopUp({
    Key? key,
    this.title = "",
    required this.children,
  }) : super(key: key);
  @override
  _CustomPopUptate createState() => _CustomPopUptate();
}

class _CustomPopUptate extends State<CustomPopUp> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: Container(
        color: Colors.black.withOpacity(.5),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AlertDialog(
                  elevation: 8,
                  title: widget.title != ""
                      ? Center(
                          child: Text(
                            widget.title,
                            style: theme.headline6!
                                .copyWith(fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : null,
                  content: SingleChildScrollView(
                    child: ListBody(children: widget.children),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
