import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import '../../../core/constants/constant.dart';
import '../../widget/neumorphic_button.dart';

class InitializationError extends StatelessWidget {
  const InitializationError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Builder(
          builder: (context) {
            final _size = MediaQuery.of(context).size;
            final _textTheme = Theme.of(context).textTheme;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: _size.height * 0.08),
                  Image.asset(
                    Constants.crash404Image,
                    width: _size.width,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: _size.width * 0.06,
                    ),
                    child: Text(
                      """An issue was detected, and we're restarting the application to resolve it...""",
                      textAlign: TextAlign.center,
                      style: _textTheme.subtitle1!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: _size.height * 0.04),
                  Text(
                    "We'll be back up momentarily",
                    textAlign: TextAlign.center,
                    style: _textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _size.height * 0.06),
                  GestureDetector(
                    onTap: () {
                      Phoenix.rebirth(context);
                    },
                    child: const NeumorphicButton(
                      title: "Restart",
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
