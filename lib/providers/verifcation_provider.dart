import 'package:flutter/material.dart';

class VerificationProvider extends ChangeNotifier{



  int _index = 1;
  
  bool _isloading = false;
  
  
  bool get isloading => _isloading;

  set isloading(bool valor){
    _isloading = valor;
    notifyListeners();
  }
  
  int get index => _index;

  set index(int valor){
    _index = valor;
    notifyListeners();
  }

}