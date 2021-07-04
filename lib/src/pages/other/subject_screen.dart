import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../widget/default_app_bar.dart';

class SubjectScreen extends StatelessWidget {
  final Semesters semesters;
  final String subjectName;
  const SubjectScreen({
    Key? key,
    required this.semesters,
    this.subjectName = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DefaultAppBar(
        title: "${semesters.semesterName}",
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Text(
              """Showing subjects for $subjectName ${semesters.semesterName}""",
              style: textTheme.caption!.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: semesters.subjects!.length,
              itemBuilder: (context, index) {
                final subjects = semesters.subjects![index];
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ScreenName.subjectDetailsScreen,
                      arguments: {
                        "subjects": subjects,
                      },
                    );
                  },
                  title: Text(
                    "${subjects!.subjectName}",
                    maxLines: 2,
                    style: textTheme.bodyText2?.copyWith(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    "${subjects.questionPapers!.length} Question paper",
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  //trailing: const Icon(Icons.cloud_download),
                  leading: CircleAvatar(
                    backgroundColor:
                        ConstantsColor.buttonShadowColor.withOpacity(0.7),
                    child: const Text(
                      "A",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
