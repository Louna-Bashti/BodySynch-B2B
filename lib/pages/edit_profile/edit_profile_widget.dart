import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'edit_profile_model.dart';
export 'edit_profile_model.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  late EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileModel());

    _model.nomController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.nom, ''));
    _model.nomFocusNode ??= FocusNode();
    _model.nomFocusNode!.addListener(() => setState(() {}));
    _model.prenomController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.prenom, ''));
    _model.prenomFocusNode ??= FocusNode();
    _model.prenomFocusNode!.addListener(() => setState(() {}));
    _model.emailController ??= TextEditingController(text: currentUserEmail);
    _model.emailFocusNode ??= FocusNode();
    _model.emailFocusNode!.addListener(() => setState(() {}));
    _model.tailleController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.taille, 0.0).toString());
    _model.tailleFocusNode ??= FocusNode();
    _model.tailleFocusNode!.addListener(() => setState(() {}));
    _model.usernameController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.userName, ''));
    _model.usernameFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edition profil',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Remplissez le formulaire ci-dessous pour continuer.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderRadius: 12.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            constraints: const BoxConstraints(
                              maxWidth: 770.0,
                            ),
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => TextFormField(
                                      controller: _model.nomController,
                                      focusNode: _model.nomFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Nom',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor:
                                            (_model.nomFocusNode?.hasFocus ??
                                                    false)
                                                ? FlutterFlowTheme.of(context)
                                                    .accent1
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                      minLines: null,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model.nomControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => TextFormField(
                                      controller: _model.prenomController,
                                      focusNode: _model.prenomFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Prénom',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor:
                                            (_model.prenomFocusNode?.hasFocus ??
                                                    false)
                                                ? FlutterFlowTheme.of(context)
                                                    .accent1
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      minLines: null,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .prenomControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _model.emailController,
                                    focusNode: _model.emailFocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Courriel',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: (_model
                                                  .emailFocusNode?.hasFocus ??
                                              false)
                                          ? FlutterFlowTheme.of(context).accent1
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 20.0, 16.0, 20.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: null,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model.emailControllerValidator
                                        .asValidator(context),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => TextFormField(
                                      controller: _model.tailleController,
                                      focusNode: _model.tailleFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Taille',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor:
                                            (_model.tailleFocusNode?.hasFocus ??
                                                    false)
                                                ? FlutterFlowTheme.of(context)
                                                    .accent1
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      minLines: null,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .tailleControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [_model.tailleMask],
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final datePicked1Date =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: getCurrentTimestamp,
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );

                                      if (datePicked1Date != null) {
                                        safeSetState(() {
                                          _model.datePicked1 = DateTime(
                                            datePicked1Date.year,
                                            datePicked1Date.month,
                                            datePicked1Date.day,
                                          );
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 734.0,
                                      height: 66.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                'Date de naissance',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              valueOrDefault(
                                                  currentUserDocument
                                                      ?.dateNaiss,
                                                  ''),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => TextFormField(
                                        controller: _model.usernameController,
                                        focusNode: _model.usernameFocusNode,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Nom d\'utilisateur',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        minLines: null,
                                        validator: _model
                                            .usernameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) =>
                                        FlutterFlowChoiceChips(
                                      options: const [
                                        ChipData('F'),
                                        ChipData('H'),
                                        ChipData('A')
                                      ],
                                      onChanged: (val) => setState(() => _model
                                          .choiceChipsValue = val?.firstOrNull),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      chipSpacing: 12.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      initialized:
                                          _model.choiceChipsValue != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                        [
                                          valueOrDefault(
                                              currentUserDocument?.sexe, '')
                                        ],
                                      ),
                                      wrapped: true,
                                    ),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 12.0))
                                    .addToEnd(const SizedBox(height: 32.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: 770.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await currentUserReference!
                            .update(createUsersRecordData(
                          nom: _model.nomController.text,
                          prenom: _model.prenomController.text,
                          email: _model.emailController.text,
                          dateNaiss: _model.datePicked1?.toString(),
                          sexe: _model.choiceChipsValue,
                          userName: _model.usernameController.text,
                        ));
                      },
                      text: 'Enregistrer',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
