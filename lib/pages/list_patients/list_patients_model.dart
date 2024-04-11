import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_patients_widget.dart' show ListPatientsWidget;
import 'package:flutter/material.dart';

class ListPatientsModel extends FlutterFlowModel<ListPatientsWidget> {
  ///  Local state fields for this page.

  bool isFullListShown = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
