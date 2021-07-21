import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../widget/default_app_bar.dart';
import '../../widget/neumorphic_button.dart';

class SemesterScreen extends StatefulWidget {
  final Branches branch;

  const SemesterScreen({Key? key, required this.branch}) : super(key: key);
  @override
  _SemesterScreenState createState() => _SemesterScreenState();
}

class _SemesterScreenState extends State<SemesterScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(title: "${widget.branch.branchName}"),
      body: Center(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Showing semesters for ${widget.branch.branchName}",
                textAlign: TextAlign.center,
                style: textTheme.caption!.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: widget.branch.semesters!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ScreenName.subjectScreen,
                        arguments: {
                          "semesters": widget.branch.semesters![index],
                          "branchName": widget.branch.branchName,
                        },
                      );
                    },
                    child: NeumorphicButton(
                      title: widget.branch.semesters![index]!.semesterName
                          as String,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
