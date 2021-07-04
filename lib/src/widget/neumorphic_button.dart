import 'package:flutter/material.dart';
import '../../core/constants/constant_color.dart';

class NeumorphicButton extends StatelessWidget {
  final String title;
  const NeumorphicButton({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.08,
        vertical: size.height * 0.010,
      ),
      child: Stack(
        children: <Widget>[
          Card(
            color: ConstantsColor.buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              margin: const EdgeInsets.all(1.6),
              width: size.width * 0.88,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ConstantsColor.buttonColor.withOpacity(.10),
                    offset: const Offset(6.0, 6.0),
                    blurRadius: 16.0,
                  ),
                  BoxShadow(
                    color: ConstantsColor.buttonShadowColor.withOpacity(0.10),
                    offset: const Offset(3.0, 3.0),
                    blurRadius: 16.0,
                  ),
                ],
                color: ConstantsColor.primaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: textTheme.bodyText2
                        ?.copyWith(color: ConstantsColor.buttonColor),
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
