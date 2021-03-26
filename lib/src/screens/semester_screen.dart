import 'package:flutter/material.dart';
import 'package:sspu_question/core/core.dart';
import 'package:sspu_question/src/widget/neumorphic_button.dart';

class SemesterScreen extends StatefulWidget {
  @override
  _SemesterScreenState createState() => _SemesterScreenState();
}

class _SemesterScreenState extends State<SemesterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Select Semster",
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Constants.primaryBackground,
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ScreenName.subjectScreen);
              },
              child: NeumorphicButton(
                title: "First Semsetr",
              ),
            );
          },
        ),
      ),
    );
  }
}
