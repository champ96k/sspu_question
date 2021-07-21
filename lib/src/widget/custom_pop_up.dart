import 'dart:ui';

import 'package:flutter/material.dart';
import '../../core/constants/constant.dart';
import '../../core/constants/constant_color.dart';

class CustomPopUp extends StatefulWidget {
  @override
  _CustomPopUptate createState() => _CustomPopUptate();
}

class _CustomPopUptate extends State<CustomPopUp> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
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
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Image(
                          height: _size.height * 0.2,
                          width: _size.width,
                          image: AssetImage(Constants.thankYouImage),
                        ),
                        SizedBox(height: _size.height * 0.01),
                        Text(
                          "Thank you!",
                          textAlign: TextAlign.center,
                          style: _textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: _size.height * 0.01),
                        Text(
                          """Your message has been received we will be in touch and contact you soon""",
                          textAlign: TextAlign.center,
                          style: _textTheme.bodyText2!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: _size.height * 0.04),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ConstantsColor.buttonColor,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            width: _size.width,
                            height: _size.height * 0.06,
                            child: const Text(
                              "Ok",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
