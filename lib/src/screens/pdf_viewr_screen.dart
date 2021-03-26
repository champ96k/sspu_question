import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFScreenViewer extends StatefulWidget {
  @override
  _PDFScreenViewerState createState() => _PDFScreenViewerState();
}

class _PDFScreenViewerState extends State<PDFScreenViewer> {
  PdfViewerController _pdfViewerController;
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
        title: Text('May 2015 Pattern'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerController.previousPage();
            },
          ),
          IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            onPressed: () {
              // _pdfViewerController.nextPage();
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        child: SfPdfViewer.network(
          'http://1.droppdf.com/files/dkZRf/coding-for-beginners-in-easy-steps-basic-programming-for-all-ages.pdf',
          controller: _pdfViewerController,
          key: _pdfViewerKey,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            AlertDialog(
              title: Text(details.error),
              content: Text(details.description),
              actions: <Widget>[
                FlatButton(
                  child: Text('OK'),
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
