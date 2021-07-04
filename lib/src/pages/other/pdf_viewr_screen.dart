import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../core/core.dart';

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
  PdfViewerController? _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          """${widget.questionPapers.paperNmae} (${widget.questionPapers.patternName})""",
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(
        //       Icons.keyboard_arrow_up,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       _pdfViewerController!.previousPage();
        //     },
        //   ),
        //   IconButton(
        //     icon: const Icon(
        //       Icons.keyboard_arrow_down,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       // _pdfViewerController.nextPage();
        //       _pdfViewerKey.currentState?.openBookmarkView();
        //     },
        //   )
        //],
      ),
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        child: SfPdfViewer.network(
          //"${widget.questionPapers.downloadURL}",
          'http://1.droppdf.com/files/dkZRf/coding-for-beginners-in-easy-steps-basic-programming-for-all-ages.pdf',
          controller: _pdfViewerController,
          key: _pdfViewerKey,
          onDocumentLoadFailed: (details) {
            AlertDialog(
              title: Text(details.error),
              content: Text(details.description),
              actions: <Widget>[
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
