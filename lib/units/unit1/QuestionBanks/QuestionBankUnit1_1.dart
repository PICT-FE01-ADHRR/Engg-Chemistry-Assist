//Code Written by Rohan Doshi
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class QuestionBankUnit11 extends StatefulWidget {
  @override
  _QuestionBankUnit11 createState() => _QuestionBankUnit11();
}

class _QuestionBankUnit11 extends State<QuestionBankUnit11> {
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

  PdfViewerController _pdfViewerController = new PdfViewerController();

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

        // child:

        // ! Code to download only for the first time of loading the app 
            // _pdfBytes == null
            //     ? Center(child: CircularProgressIndicator())
            //     : SfPdfViewer.memory(
            //         _pdfBytes,
            //         controller: _pdfViewerController,
            //       ),

        // 
        child: SfPdfViewer.network(
          'https://firebasestorage.googleapis.com/v0/b/chemistry-study-assist.appspot.com/o/QuestionBankUnit11.pdf?alt=media&token=349f894c-1dee-49c9-9f43-d5638c422118',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),


      ),
    );
  }
}
