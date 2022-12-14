
import 'package:flutter/material.dart';
import 'package:qrane/sura_detailse/suraDetails.dart';

class suraNameItem extends StatelessWidget {
  String suraName;
  int index;
  suraNameItem({required this.suraName,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routeName,arguments:SuraDetaileArgeo(sura_name: suraName, sura_num: index) );
      },
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle2,),
    );
  }
}
