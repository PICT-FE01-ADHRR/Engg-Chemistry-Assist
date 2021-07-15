//Code Written by Rohan Doshi
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class QuestionBankUnit12 extends StatefulWidget {
  @override
  _QuestionBankUnit12 createState() => _QuestionBankUnit12();
}

class _QuestionBankUnit12 extends State<QuestionBankUnit12> {
  PdfViewerController _pdfViewerController = new PdfViewerController();
  // final String _url =
  //     'https://firebasestorage.googleapis.com/v0/b/chemistry-study-assist.appspot.com/o/QuestionBankUnit11.pdf?alt=media&token=349f894c-1dee-49c9-9f43-d5638c422118';
  // late Uint8List _pdfBytes;
  // // Downloads the PDF from the URL
  // void downloadPDF() async {
  //   final HttpClient client = HttpClient();
  //   final HttpClientRequest request = await client.getUrl(Uri.parse(_url));
  //   final HttpClientResponse response = await request.close();
  //   _pdfBytes = await consolidateHttpClientResponseBytes(response);
  //   setState(() {});
  // }
  
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    // downloadPDF();
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
        child: SfPdfViewer.network(
          'https://firebasestorage.googleapis.com/v0/b/chemistry-study-assist.appspot.com/o/QuestionBankUnit12.pdf?alt=media&token=16d33267-91e1-4fe2-9b9a-4492f7eba08d',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}