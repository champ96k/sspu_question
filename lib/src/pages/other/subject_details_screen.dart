import 'package:flutter/material.dart';
import '../../../core/core.dart';

class SubjectDetailsScreen extends StatefulWidget {
  final Subjects subjects;

  const SubjectDetailsScreen({
    Key? key,
    required this.subjects,
  }) : super(key: key);
  @override
  _SubjectDetailsScreenState createState() => _SubjectDetailsScreenState();
}

class _SubjectDetailsScreenState extends State<SubjectDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${widget.subjects.subjectName}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: widget.subjects.questionPapers!.length,
        itemBuilder: (context, index) {
          final papers = widget.subjects.questionPapers![index];
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, ScreenName.pdfScreenViewer,
                  arguments: {"questionPapers": papers});
            },
            title: Text(
              "${papers!.paperNmae}",
              maxLines: 2,
              style: textTheme.bodyText2?.copyWith(
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(
              "${papers.patternName}",
              style: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            trailing: const Icon(Icons.cloud_download),
            leading: const CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.library_books_outlined, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
