

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrane/home/Ahadeth.dart';
import 'package:qrane/home/SuraNameItem/qurane.dart';
import 'package:qrane/home/radio.dart';
import 'package:qrane/home/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qrane/home/SettingItem/settings.dart';
import 'package:qrane/provider/my_provider.dart';

class Home extends StatefulWidget {
  static const String routename='home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int crreuntTap=0;
  List<Widget>tabs=[
    Quran(),
    Sebha(),
    RadioScreen(),
    Ahadethe(),
    Settings(),

  ];


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(provider.backgroundimage(),

        fit: BoxFit.fitWidth,
        width: double.infinity,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title:
            Text(
              AppLocalizations.of(context)!.appTitle
              ,
            style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:  crreuntTap,
            onTap:(index) {
              crreuntTap=index;
              setState(() {

              });

            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage(
                    'assets/images/quran.png'
                ),size: 30,
              ),
                label: AppLocalizations.of(context)!.quran,

              ),
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage(
                    'assets/images/sebha.png'
                ),size: 30,
              ),
                label: AppLocalizations.of(context)!.sebha,

              ),
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage(
                    'assets/images/radio.png'
                ),size: 30,
              ),
                label: AppLocalizations.of(context)!.radio,

              ),
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage(
                    'assets/images/quran-quran-svgrepo-com.png'
                ),size: 30,
              ),
                label: AppLocalizations.of(context)!.ahadeth,

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings,size: 30,),

                label: AppLocalizations.of(context)!.setting,

              ),

            ],
          ),
          body: tabs[crreuntTap],


        ),
      ],
    );
  }
}
