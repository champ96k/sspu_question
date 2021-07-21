import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../widget/default_app_bar.dart';

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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(
        title: "${widget.subjects.subjectName}",
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Text(
                """Showing question papers of ${widget.subjects.subjectName} ${widget.subjects.questionPapers!.length} question paper found""",
                textAlign: TextAlign.center,
                style: textTheme.caption!.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            ListView.builder(
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
                  leading: CircleAvatar(
                    backgroundColor:
                        ConstantsColor.buttonShadowColor.withOpacity(0.7),
                    child: const Icon(
                      Icons.library_books_outlined,
                      color: Colors.white,
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
