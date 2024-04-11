import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomController;
  String? Function(BuildContext, String?)? nomControllerValidator;
  String? _nomControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomController;
  String? Function(BuildContext, String?)? prenomControllerValidator;
  String? _prenomControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for passwordcreate widget.
  FocusNode? passwordcreateFocusNode;
  TextEditingController? passwordcreateController;
  late bool passwordcreateVisibility;
  String? Function(BuildContext, String?)? passwordcreateControllerValidator;
  // State field(s) for passwordconfirm widget.
  FocusNode? passwordconfirmFocusNode;
  TextEditingController? passwordconfirmController;
  late bool passwordconfirmVisibility;
  String? Function(BuildContext, String?)? passwordconfirmControllerValidator;

  @override
  void initState(BuildContext context) {
    nomControllerValidator = _nomControllerValidator;
    prenomControllerValidator = _prenomControllerValidator;
    passwordcreateVisibility = false;
    passwordconfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomFocusNode?.dispose();
    nomController?.dispose();

    prenomFocusNode?.dispose();
    prenomController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    usernameFocusNode?.dispose();
    usernameController?.dispose();

    passwordcreateFocusNode?.dispose();
    passwordcreateController?.dispose();

    passwordconfirmFocusNode?.dispose();
    passwordconfirmController?.dispose();
  }
}
