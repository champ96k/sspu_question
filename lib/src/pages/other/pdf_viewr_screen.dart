import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../../../core/core.dart';
import '../../widget/default_app_bar.dart';
import '../loading/loading_screen.dart';

class PDFScreenViewer extends StatefulWidget {
  final QuestionPapers questionPapers;

  const PDFScreenViewer({
    Key? key,
    required this.questionPapers,
  }) : super(key: key);
  @override
  _PDFScreenViewerState createState() => _PDFScreenViewerState();
}

class _PDFScreenViewerState extends State<PDFScreenViewer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DefaultAppBar(
        title:
            """${widget.questionPapers.paperNmae} (${widget.questionPapers.patternName})""",
      ),
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        child: PDF(
          pageSnap: true,
          onError: (e) {
            log(e.toString());
          },
          onPageError: (page, error) {
            log(error.toString());
          },
        ).cachedFromUrl(
          Constants.demoPDF,
          whenDone: (value) {
            log(value.toString());
          },
          placeholder: (progress) {
            log(progress.toString());
            return Center(
              child: LoadingScreen(
                loadingText: "Downloading $progress %",
              ),
            );
          },
          errorWidget: (error) {
            log(error.toString());
            return Center(
              child: Text(
                "Something went wrong",
                style: textTheme.bodyText2!.copyWith(
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
