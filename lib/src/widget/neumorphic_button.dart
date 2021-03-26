import 'package:flutter/material.dart';
import 'package:sspu_question/core/core.dart';

class NeumorphicButton extends StatelessWidget {
  final String title;
  const NeumorphicButton({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.08,
        vertical: size.height * 0.012,
      ),
      child: Stack(
        children: <Widget>[
          Card(
            color: Constants.buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              margin: EdgeInsets.all(1.6),
              width: size.width * 0.88,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Constants.buttonColor.withOpacity(.10),
                    offset: Offset(6.0, 6.0),
                    blurRadius: 16.0,
                  ),
                  BoxShadow(
                    color: Constants.buttonShadowColor.withOpacity(0.10),
                    offset: Offset(3.0, 3.0),
                    blurRadius: 16.0,
                  ),
                ],
                color: Constants.primaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: textTheme.bodyText2
                        .copyWith(color: Constants.buttonColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
