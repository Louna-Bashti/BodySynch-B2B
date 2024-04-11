import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testlisteview_widget.dart' show TestlisteviewWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TestlisteviewModel extends FlutterFlowModel<TestlisteviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for listedefilms widget.

  PagingController<ApiPagingParams, dynamic>? listedefilmsPagingController;
  Function(ApiPagingParams nextPageMarker)? listedefilmsApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    listedefilmsPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListedefilmsController(
    Function(ApiPagingParams) apiCall,
  ) {
    listedefilmsApiCall = apiCall;
    return listedefilmsPagingController ??=
        _createListedefilmsController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListedefilmsController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listedefilmsTestTmdbPage);
  }

  void listedefilmsTestTmdbPage(ApiPagingParams nextPageMarker) =>
      listedefilmsApiCall!(nextPageMarker).then((listedefilmsTestTmdbResponse) {
        final pageItems = (getJsonField(
                  listedefilmsTestTmdbResponse.jsonBody,
                  r'''$.data.name''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listedefilmsPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listedefilmsTestTmdbResponse,
                )
              : null,
        );
      });
}
