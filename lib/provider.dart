import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class UsersData with ChangeNotifier {
  dynamic _data;
  dynamic get data => _data;
  set data(dynamic newData) {
    _data = newData;
    notifyListeners();
  }
}
