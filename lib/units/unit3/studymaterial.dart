//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
//import 'package:syncfusion_flutter_pdf/pdf.dart';


class StudyMaterialUnit3 extends StatefulWidget {
  @override
  _StudyMaterialUnit3State createState() => _StudyMaterialUnit3State();
}

class _StudyMaterialUnit3State extends State<StudyMaterialUnit3> {
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
        title: Text("Unit 1 Study Material"),
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
          'assets/unit2/StudyMaterialUnit3.pdf',
          controller: _pdfViewerController,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}















// below is the code to implement searching // does not work but it has no errors 


/*
typedef SearchTapCallback = void Function(Object item);
 
/// SearchToolbar widget.
class SearchToolbar extends StatefulWidget {
  ///Describes the search toolbar constructor.
  SearchToolbar({
    required this.controller,
    required this.onTap,
    this.showTooltip = true,  
    required Key key,
  }) : super(key: key);
 
  /// Indicates whether the tooltip for the search toolbar items should be shown or not.
  final bool showTooltip;
 
  /// An object that is used to control the [SfPdfViewer].
  final PdfViewerController controller;
 
  /// Called when the search toolbar item is selected.
  final SearchTapCallback onTap;
 
  @override
  SearchToolbarState createState() => SearchToolbarState();
}
class SearchToolbarState extends State<SearchToolbar> {
  bool _showSearchResultItems = false;
  int _textLength = 0;
 
  /// Define the focus node. To manage the life cycle, create the FocusNode in the initState method, and clean it up in the dispose method.
  late FocusNode _focusNode;
 
  /// An object that is used to control the Text Form Field.
  final TextEditingController _editingController = TextEditingController();
 
  /// An object that is used to retrieve the text search result.
  PdfTextSearchResult _pdfTextSearchResult = PdfTextSearchResult();
 
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.requestFocus();
  }
 
  ///Clear the text search result.
  void clearSearch() {
    _pdfTextSearchResult.clear();
  }
 
  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    _focusNode.dispose();
    super.dispose();
  }
 
  ///Display the Alert dialog to search from the beginning.
  void _showSearchAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(0),
          title: Text('Search Result'),
          content: Container(
              width: 328.0,
              child: Text(
                  'No more occurrences found. Would you like to continue to search from the beginning?')),
          actions: <Widget>[
            FlatButton(
              child: Text('YES'),
              onPressed: () {
                _pdfTextSearchResult.nextInstance();
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('NO'),
              onPressed: () {
                _pdfTextSearchResult.clear();
                _editingController.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: <Widget>[
        Material(
          color: Colors.transparent,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0x000000).withOpacity(0.54),
              size: 24,
            ),
            onPressed: () {
              widget.onTap.call('Cancel Search');
              _editingController.clear();
              _pdfTextSearchResult.clear();
            },
          ),
        ),
        Flexible(
          child: TextFormField(
            style: TextStyle(
                color: Color(0x000000).withOpacity(0.87), fontSize: 16),
            enableInteractiveSelection: false,
            focusNode: _focusNode,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            controller: _editingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Find...',
              hintStyle: TextStyle(color: Color(0x000000).withOpacity(0.34)),
            ),
            onChanged: (text) {
              if (_textLength < _editingController.value.text.length) {
                _textLength = _editingController.value.text.length;
              }
              if (_editingController.value.text.length < _textLength) {
                setState(() {
                  _showSearchResultItems = false;
                });
              }
            },
            onFieldSubmitted: (String value) async {
              _pdfTextSearchResult =
                  await widget.controller.searchText(_editingController.text);
              if (_pdfTextSearchResult.totalInstanceCount == 0) {
                widget.onTap.call('onSubmit');
              } else {
                setState(() {
                  _showSearchResultItems = true;
                });
              }
            },
          ),
        ),
        Visibility(
          visible: _editingController.text.isNotEmpty,
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              icon: Icon(
                Icons.clear,
                color: Color.fromRGBO(0, 0, 0, 0.54),
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  _editingController.clear();
                  _pdfTextSearchResult.clear();
                  widget.controller.clearSelection();
                  _showSearchResultItems = false;
                  _focusNode.requestFocus();
                });
                widget.onTap.call('Clear Text');
              },
              tooltip: widget.showTooltip ? 'Clear Text' : null,
            ),
          ),
        ),
        Visibility(
          visible: _showSearchResultItems,
          child: Row(
            children: [
              Text(
                '${_pdfTextSearchResult.currentInstanceIndex}',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.54).withOpacity(0.87),
                    fontSize: 16),
              ),
              Text(
                ' of ',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.54).withOpacity(0.87),
                    fontSize: 16),
              ),
              Text(
                '${_pdfTextSearchResult.totalInstanceCount}',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.54).withOpacity(0.87),
                    fontSize: 16),
              ),
              Material(
                color: Colors.transparent,
                child: IconButton(
                  icon: Icon(
                    Icons.navigate_before,
                    color: Color.fromRGBO(0, 0, 0, 0.54),
                    size: 24,
                  ),
                  onPressed: () {
                    setState(() {
                      _pdfTextSearchResult.previousInstance();
                    });
                    widget.onTap.call('Previous Instance');
                  },
                  tooltip: widget.showTooltip ? 'Previous' : null,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: IconButton(
                  icon: Icon(
                    Icons.navigate_next,
                    color: Color.fromRGBO(0, 0, 0, 0.54),
                    size: 24,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_pdfTextSearchResult.currentInstanceIndex ==
                              _pdfTextSearchResult.totalInstanceCount &&
                          _pdfTextSearchResult.currentInstanceIndex != 0 &&
                          _pdfTextSearchResult.totalInstanceCount != 0) {
                        _showSearchAlertDialog(context);
                      } else {
                        widget.controller.clearSelection();
                        _pdfTextSearchResult.nextInstance();
                      }
                    });
                    widget.onTap.call('Next Instance');
                  },
                  tooltip: widget.showTooltip ? 'Next' : null,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class StudyMaterialUnit3 extends StatefulWidget {
  @override
  CustomSearchPdfViewerState createState() => CustomSearchPdfViewerState();
}
 
class CustomSearchPdfViewerState extends State<StudyMaterialUnit3> {
  final PdfViewerController _pdfViewerController = PdfViewerController();
  final GlobalKey<SearchToolbarState> _textSearchKey = GlobalKey();
 
  late bool _showToast;
  late bool _showScrollHead;
  late bool _showSearchToolbar;
 
  // Ensure the entry history of text search.
  late LocalHistoryEntry _localHistoryEntry;
 
  @override
  void initState() {
    _showToast = false;
    _showScrollHead = true;
    _showSearchToolbar = false;
    super.initState();
  }
 
  void _ensureHistoryEntry() {
    // ignore: unnecessary_null_comparison
    if (_localHistoryEntry == null) {
      final ModalRoute<Object?>? route = ModalRoute.of(context);
      if (route != null) {
        _localHistoryEntry =
            LocalHistoryEntry(onRemove: _handleHistoryEntryRemoved);
        route.addLocalHistoryEntry(_localHistoryEntry);
      }
    }
  }
 
  void _handleHistoryEntryRemoved() {
    _textSearchKey.currentState?.clearSearch();
    setState(() {
      _showSearchToolbar = false; 
      //_localHistoryEntry = null;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showSearchToolbar
          ? AppBar(
              flexibleSpace: SafeArea(
                child: SearchToolbar(
                  key: _textSearchKey,
                  showTooltip: true,
                  controller: _pdfViewerController,
                  onTap: (Object toolbarItem) async {
                    if (toolbarItem.toString() == 'Cancel Search') {
                      setState(() {
                        _showSearchToolbar = false;
                        _showScrollHead = true;
                        if (Navigator.canPop(context)) {
                          Navigator.maybePop(context);
                        }
                      });
                    }
                    if (toolbarItem.toString() == 'onSubmit') {
                      setState(() {
                        _showToast = true;
                      });
                      await Future.delayed(Duration(seconds: 2));
                      setState(() {
                        _showToast = false;
                      });
                    }
                  },
                ),
              ),
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xFFFAFAFA),
            )
          : AppBar(
              title: Text(
                'Syncfusion Flutter PDF Viewer',
                style: TextStyle(color: Colors.black87),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    setState(() {
                      _showScrollHead = false;
                      _showSearchToolbar = true;
                      _ensureHistoryEntry();
                    });
                  },
                ),
              ],
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xFFFAFAFA),
            ),
      body: Stack(
        children: [
          SfPdfViewer.asset(
            'lib/units/unit1/Files/StudyMaterialUnit1.pdf',
            controller: _pdfViewerController,
            canShowScrollHead: _showScrollHead,
          ),
          Visibility(
            visible: _showToast,
            child: Align(
              alignment: Alignment.center,
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(left: 15, top: 7, right: 15, bottom: 7),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Text(
                      'No matches found',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
                  ],
      ),
    );
  }
}
*/

