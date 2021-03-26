import 'package:flutter/material.dart';
import 'package:sspu_question/core/core.dart';

class SubjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Select Subject",
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Constants.primaryBackground,
      body: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, ScreenName.subjectDetailsScreen);
            },
            title: Text(
              "Data Structure and Algorithm",
              maxLines: 2,
              style: textTheme.bodyText2.copyWith(
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(
              "0 of 9 papers downloaded",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            trailing: Icon(Icons.cloud_download),
            leading: CircleAvatar(
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
