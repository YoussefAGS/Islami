import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:qrane/home/SuraNameItem/sura_details_item.dart';
import 'package:qrane/my_themedata.dart';
import 'package:qrane/provider/suraprovider.dart';

import '../provider/my_provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<suraProvider>(context);
    var provider2=Provider.of<MyProvider>(context);

    var arg = ModalRoute.of(context)?.settings.arguments as SuraDetaileArgeo;
    if (provider.suraLines.isEmpty) {
      provider.lodefile(arg.sura_num);
    }
    return Stack(children: [
      Image.asset(
        provider2.backgroundimage(),
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            arg.sura_name,
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: provider.suraLines.isEmpty?Center(child: CircularProgressIndicator()):ListView.separated(
          separatorBuilder: (_, index) => Divider(
            thickness: 2,
            color: MyTHemeData.colorgolde,
          ),
            itemCount: provider.suraLines.length,

            itemBuilder: (_, index){
            return SuraDetailsItem(sura_item: provider.suraLines[index],index: index,);

          }
        ),
      )
    ]);
  }


}

class SuraDetaileArgeo {
  String sura_name;
  int sura_num;

  SuraDetaileArgeo({required this.sura_name, required this.sura_num});
}
