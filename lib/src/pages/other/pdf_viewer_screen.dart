import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../../../core/core.dart';
import '../error/error_screen.dart';
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
  bool isError = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height,
            width: size.width,
            child: PDF(
              fitEachPage: true,
              pageFling: true,
              preventLinkNavigation: true,
              onError: (e) {
                log(e.toString());
              },
              onPageError: (page, error) {
                log(error.toString());
              },
            ).cachedFromUrl(
              widget.questionPapers.downloadURL.toString(),
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
                WidgetsBinding.instance!
                    .addPostFrameCallback((_) => setState(() {
                          isError = true;
                        }));
                return const ErrorScreen();
              },
            ),
          ),
          isError
              ? Container()
              : Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  left: 0.0,
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width,
                    height: size.height * 0.06,
                    color: Colors.grey.withOpacity(0.3),
                    child: Text(
                      """${widget.questionPapers.paperNmae} (${widget.questionPapers.patternName})""",
                      style: _textTheme.subtitle2!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
