import 'package:flutter/material.dart';
import '../../../core/constants/constant.dart';
import '../../widget/neumorphic_button.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: _size.height * 0.4,
                width: _size.width,
                image: AssetImage(Constants.errorImage),
              ),
              SizedBox(height: _size.height * 0.01),
              Text(
                "Whoops!",
                textAlign: TextAlign.center,
                style: _textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: _size.height * 0.01),
              Text(
                """We couldn't find the page you\nare looking for.""",
                textAlign: TextAlign.center,
                style: _textTheme.subtitle1!.copyWith(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: _size.height * 0.03),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const NeumorphicButton(
                  title: "Back",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
