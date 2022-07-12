import 'package:flutter/material.dart';

class InputProvider extends ChangeNotifier{

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  String _codServicio  = '';
  bool _isloading = false;
  

  bool get isloading => _isloading;

  set isloading(bool valor){
    _isloading = valor;
    notifyListeners();
  }

  String get codigoServicio => _codServicio;

  set codigoServicio(String valor){
    _codServicio = valor;
    notifyListeners();
  }

  bool isValid(){
    print(globalKey.currentState!.validate());
    print(codigoServicio);
    return globalKey.currentState?.validate() ?? false;
  }

}