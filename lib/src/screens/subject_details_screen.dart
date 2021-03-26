import 'package:flutter/material.dart';
import 'package:sspu_question/core/core.dart';

class SubjectDetailsScreen extends StatefulWidget {
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
          "Data Struture and Algorithm",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Constants.primaryBackground,
      body: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, ScreenName.pdfScreenViewer);
            },
            title: Text(
              "May 2020",
              maxLines: 2,
              style: textTheme.bodyText2.copyWith(
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(
              "2015 Pattern",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            trailing: Icon(Icons.cloud_download),
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.library_books_outlined, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
