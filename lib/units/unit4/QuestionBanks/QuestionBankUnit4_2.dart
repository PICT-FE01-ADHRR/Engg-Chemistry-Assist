//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class QuestionBankUnit42 extends StatefulWidget {
  @override
  _QuestionBankUnit42 createState() => _QuestionBankUnit42();
}

class _QuestionBankUnit42 extends State<QuestionBankUnit42> {
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
        title: Text("Question Bank 2"),
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
          'assets/unit4/QuestionBankUnit42.pdf',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}
