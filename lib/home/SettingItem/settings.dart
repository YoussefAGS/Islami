import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrane/home/SettingItem/languagbottumSheet.dart';
import 'package:qrane/home/SettingItem/thememode.dart';
import 'package:qrane/my_themedata.dart';
import 'package:qrane/provider/my_provider.dart';

class Settings extends StatefulWidget {


  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              sHowlanguagbottmeSheet();

            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyTHemeData.colorgolde),
              ),
              child: Text(
                provider.languageCode=='en'?'English':'Arabic',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Theme.of(context).colorScheme.secondary
                )
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text('Theme',style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              sHowThemebottmeSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyTHemeData.colorgolde),
              ),
              child: Text(
                provider.crrentTheme.name,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Theme.of(context).colorScheme.secondary
                )
              ),
            ),
          ),

        ],
      ),
    );
  }
  void sHowlanguagbottmeSheet() {
    showModalBottomSheet(context: context, builder:(context){
      return LanguageBottomSheet();
    });
  }
  void sHowThemebottmeSheet() {
    showModalBottomSheet(context: context, builder:(context){
      return Thememodebottom();
    });
  }
}


