// //Code Written by Rohan Doshi
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// class StudyMaterialUnit2 extends StatefulWidget {
//   @override
//   _StudyMaterialUnit2State createState() => _StudyMaterialUnit2State();
// }

// class _StudyMaterialUnit2State extends State<StudyMaterialUnit2> {
//   PdfViewerController _pdfViewerController = new PdfViewerController();

//   @override
//   void initState() {
//     _pdfViewerController = PdfViewerController();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Unit 2 Study Material"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.keyboard_arrow_up,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               _pdfViewerController.previousPage();
//             },
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.keyboard_arrow_down,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               _pdfViewerController.nextPage();
//             },
//           )
//         ],
//       ),
//       body: Container(
//         child: SfPdfViewer.asset(
//           'assets/unit2/StudyMaterialUnit2.pdf',
//           controller: _pdfViewerController,
//           onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
//             print("FAIL");
//           },
//         ),
//       ),
//     );
//   }
// }

//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class StudyMaterialUnit2 extends StatefulWidget {
  const StudyMaterialUnit2({super.key});

  @override
  _StudyMaterialUnit2State createState() => _StudyMaterialUnit2State();
}

class _StudyMaterialUnit2State extends State<StudyMaterialUnit2> {
  PdfViewerController _pdfViewerController = PdfViewerController();

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
        title: const Text(
          "Study Material",
          //style: TextStyle(fontSize: 25),
        ),
        backgroundColor: const Color(0xFF0a1931),
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
          'assets/unit2/StudyMaterialUnit2.pdf',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}
