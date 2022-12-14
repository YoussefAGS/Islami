
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class suraProvider extends ChangeNotifier{
  List<String> suraLines = [];

  void lodefile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>linse = content.split('\n');
    suraLines=linse;
    notifyListeners();
  }

}
