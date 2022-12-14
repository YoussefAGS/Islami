import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrane/Hadeth_details/hadethdetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../my_themedata.dart';

class Ahadethe extends StatefulWidget {
  @override
  State<Ahadethe> createState() => _AhadetheState();
}

class _AhadetheState extends State<Ahadethe> {
  List<HadethData> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) {
      loadHadethFile();
      print(Ahadeth.length);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/ahadeth_main_bg.png'),
        const Divider(
          color: MyTHemeData.colorgolde,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(color: MyTHemeData.colorgolde, fontSize: 22),
        ),
        const Divider(
          color: MyTHemeData.colorgolde,
          thickness: 3,
        ),
        Expanded(
          child: ListView.separated(
              separatorBuilder: (_, index) => Divider(
                    color: MyTHemeData.colorgolde,
                    thickness: 1.5,
                  ),
              itemBuilder: (_, index) => InkWell(
                onTap: (){
                  Navigator.pushNamed(context, hadethDetails.routeName,arguments: Ahadeth[index]);
                },
                child: Text(
                      '${Ahadeth[index].title}',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        fontSize: 20,
                      ),
                  textAlign: TextAlign.center,
                    ),
              ),
              itemCount: Ahadeth.length),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/a .txt');
    List<String> Allahadeth = content.split('#\r\n');

    for (int i = 0; i < Allahadeth.length; i++) {
      List<String> HadethLines = Allahadeth[i].split('\n');
      String title = HadethLines[0];
      HadethLines.removeAt(0);
      HadethData h = HadethData(title: title, content: HadethLines);

      Ahadeth.add(h);
    }
    setState(() {});
  }
}

class HadethData {
  String title;
  List<String> content;

  HadethData({required this.title, required this.content});
}
