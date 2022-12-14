
import 'package:flutter/material.dart';
import 'package:qrane/my_themedata.dart';

class MyProvider extends ChangeNotifier{
  String languageCode='en';
  ThemeMode crrentTheme=ThemeMode.light;

  void changelanguage(String lang){
    if(languageCode==lang)return;

    languageCode=lang;
    notifyListeners();
  }
  Color getcolour(String lang){
    return (languageCode==lang? MyTHemeData.colorgolde : MyTHemeData.colorBlack);

  }
  void changetheme(ThemeMode crrunt){
    if(crrentTheme==crrunt)return;
    crrentTheme=crrunt;
    notifyListeners();
  }
  String backgroundimage(){
    if(crrentTheme==ThemeMode.light)return'assets/images/main_backgroend.png' ;
    else return 'assets/images/backgroundDark.png';
  }
  String sebhaTheme(){
    if(crrentTheme==ThemeMode.light)return'assets/images/body of seb7a.png' ;
    else return 'assets/images/body of seb7a dark.png';
  }
  String sebhaheadTheme(){
    if(crrentTheme==ThemeMode.light)return'assets/images/head of seb7a.png' ;
    else return 'assets/images/head of seb7a dark.png';
  }

}