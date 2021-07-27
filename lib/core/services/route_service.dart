import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app_config/tap_action.dart';

class RouteService {
  static void handleTapAction(BuildContext context, {TapAction? tapAction}) {
    if (tapAction == null) return;
    if (tapAction.action == null) return;
    switch (tapAction.action) {
      case "none":
        break;
      case "url":
        canLaunch(tapAction.route!).then((isLaunchable) {
          if (isLaunchable) launch(tapAction.route!);
        });
        break;
      case "screen":
        if (tapAction.route != null) {
          Navigator.of(context).pushNamed(tapAction.route!);
        } else {
          return;
        }
        break;
      default:
    }
  }
}
