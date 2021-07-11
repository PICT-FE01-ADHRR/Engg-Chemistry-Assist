//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class QuestionBankUnit31 extends StatefulWidget {
  @override
  _QuestionBankUnit31 createState() => _QuestionBankUnit31();
}

class _QuestionBankUnit31 extends State<QuestionBankUnit31> {
  PdfViewerController _pdfViewerController = new PdfViewerController();

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        backgroundColor: Color(0xFF0a1931),
        title: Text("Question Bank 1"),
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
              _pdfViewerController.nextPage();
            },
          )
        ],
      ),
      body: Container(
        child: SfPdfViewer.asset(
          'assets/unit3/QuestionBankUnit31.pdf',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}
