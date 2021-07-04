import 'package:flutter/material.dart';
import '../../../core/core.dart';

class SubjectScreen extends StatelessWidget {
  final Semesters semesters;
  const SubjectScreen({
    Key? key,
    required this.semesters,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${semesters.semesterName}",
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
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
            trailing: const Icon(Icons.cloud_download),
            leading: const CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                "A",
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
