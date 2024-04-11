import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isFullListShown = true;
  bool get isFullListShown => _isFullListShown;
  set isFullListShown(bool value) {
    _isFullListShown = value;
  }

  String _selectedUser = '';
  String get selectedUser => _selectedUser;
  set selectedUser(String value) {
    _selectedUser = value;
  }
}
