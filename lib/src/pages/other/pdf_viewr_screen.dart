import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../../../core/core.dart';
import '../../widget/default_app_bar.dart';

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
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height,
            width: size.width,
            child: PDF(
              pageSnap: true,
              onError: (e) {},
            ).cachedFromUrl(
              Constants.demoPDF,
              whenDone: (value) {},
              placeholder: (progress) => Center(
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.height * 0.2,
                      width: size.width * 0.3,
                      child: CircularProgressIndicator(
                        color: Colors.red,
                        backgroundColor: ConstantsColor.silver,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          ConstantsColor.buttonShadowColor.withOpacity(0.7),
                        ),
                        value: progress,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.2,
                      width: size.width * 0.3,
                      child: Center(
                        child: Text(
                          '$progress %',
                          textAlign: TextAlign.center,
                          style: textTheme.bodyText2!.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              errorWidget: (error) => Center(
                child: Text(
                  error.toString(),
                  style: textTheme.bodyText2!.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: size.width * 0.04,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  onPressed: () {
                    // _pdfViewerController!.previousPage();
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  onPressed: () {
                    // _pdfViewerController!.nextPage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
