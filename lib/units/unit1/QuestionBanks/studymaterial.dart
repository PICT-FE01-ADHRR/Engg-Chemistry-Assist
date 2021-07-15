//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class StudyMaterialUnit1 extends StatefulWidget {
  @override
  _StudyMaterialUnit1State createState() => _StudyMaterialUnit1State();
}

class _StudyMaterialUnit1State extends State<StudyMaterialUnit1> {
  PdfViewerController _pdfViewerController = new PdfViewerController();

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "Study Material",
          //style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xFF0a1931),
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
          'https://firebasestorage.googleapis.com/v0/b/chemistry-study-assist.appspot.com/o/StudyMaterialUnit1.pdf?alt=media&token=ef7c0cbf-7173-4b95-b6d1-0b4ff7559a18',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}
