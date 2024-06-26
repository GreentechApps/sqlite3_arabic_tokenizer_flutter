import 'package:flutter/material.dart';

import '../model/Verse.dart';
import '../repository/app_database.dart';

class AppProvider extends ChangeNotifier {
  final _appDatabase = AppDatabase();

  List<Verse> verses = [];

  AppProvider() {
    _appDatabase.testTokenizer();
  }

  Future<void> search(String key) async {
    if (key.isEmpty) {
      verses = [];
      notifyListeners();
      return;
    }
    verses = await _appDatabase.search(key);
    notifyListeners();
  }
}
