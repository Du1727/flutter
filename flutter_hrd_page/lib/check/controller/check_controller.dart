
import 'package:flutter/foundation.dart';

class CheckController extends ChangeNotifier{
  bool _isChecked = false;

  bool get isChecked => _isChecked;


  void change(){
    print("2");
    _isChecked = !_isChecked;
    notifyListeners();
  }

}