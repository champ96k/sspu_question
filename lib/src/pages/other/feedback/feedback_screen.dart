import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../widget/custom_pop_up.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: _size.width * 0.08),
          child: Column(
            children: [
              Image(
                height: _size.height * 0.4,
                width: _size.width,
                image: AssetImage(Constants.feedbackImage),
              ),
              SizedBox(height: _size.height * 0.01),
              Text(
                "Let us know how \nwe're doing!",
                textAlign: TextAlign.center,
                style: _textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: _size.height * 0.01),
              Text(
                """We are always trying to improve what what we do and your feedback is invaluble!""",
                textAlign: TextAlign.center,
                style: _textTheme.bodyText2!.copyWith(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: _size.height * 0.04),
              TextFormField(
                maxLines: 5,
                autocorrect: true,
                enableSuggestions: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Write somthing here",
                  counterStyle: const TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ),
              SizedBox(height: _size.height * 0.04),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CustomPopUp(
                        children: [
                          Image(
                            height: _size.height * 0.2,
                            width: _size.width,
                            image: AssetImage(Constants.thankYouImage),
                          ),
                          SizedBox(height: _size.height * 0.01),
                          Text(
                            "Thanks you!",
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
                      );
                    },
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ConstantsColor.buttonColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  width: _size.width,
                  height: _size.height * 0.07,
                  child: const Text(
                    "Sumbit",
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
    );
  }
}
