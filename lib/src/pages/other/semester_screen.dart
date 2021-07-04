import 'package:flutter/material.dart';
import '../../../core/core.dart';
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${widget.branch.branchName}",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
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
                  },
                );
              },
              child: NeumorphicButton(
                title: widget.branch.semesters![index]!.semesterName as String,
              ),
            );
          },
        ),
      ),
    );
  }
}
