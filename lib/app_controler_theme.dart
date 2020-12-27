import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isdarktheme = false;
  changetheme() {
    isdarktheme = !isdarktheme;
    notifyListeners();
  }
}
