//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class QuestionBankUnit61 extends StatefulWidget {
  const QuestionBankUnit61({super.key});

  @override
  _QuestionBankUnit61 createState() => _QuestionBankUnit61();
}

class _QuestionBankUnit61 extends State<QuestionBankUnit61> {
  PdfViewerController _pdfViewerController = PdfViewerController();

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        backgroundColor: const Color(0xFF0a1931),
        title: const Text("Question Bank 1"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerController.previousPage();
            },
          ),
          IconButton(
            icon: const Icon(
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
          'assets/unit6/QuestionBankUnit61.pdf',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}
