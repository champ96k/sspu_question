import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/core.dart';
import '../../../../core/services/firestore_services.dart';
import '../../../widget/custom_pop_up.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
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
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: _controller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please write something';
                    }
                    return null;
                  },
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
              ),
              SizedBox(height: _size.height * 0.04),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    try {
                      GetIt.I<FirestoreServices>()
                          .sentFeedback(_controller.text);
                    } catch (e) {}
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomPopUp();
                      },
                    );
                    _controller.clear();
                  }
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
