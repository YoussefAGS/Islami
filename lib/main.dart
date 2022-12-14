import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrane/Hadeth_details/hadethdetails.dart';
import 'package:qrane/home/home.dart';
import 'package:qrane/my_themedata.dart';
import 'package:qrane/provider/my_provider.dart';
import 'package:qrane/provider/suraprovider.dart';
import 'package:qrane/sura_detailse/suraDetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => MyProvider()),
          ChangeNotifierProvider(
              create: (context) => suraProvider()),

        ],

        child: MyApp()),

  );
}

class MyApp extends StatelessWidget {
  late MyProvider provider;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      locale: Locale(provider.languageCode),
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routename: (_) => Home(),
        SuraDetails.routeName: (_) => SuraDetails(),
        hadethDetails.routeName: (_) => hadethDetails(),


      },
      initialRoute: Home.routename,
      theme: MyTHemeData.lightTheme,
      darkTheme: MyTHemeData.darkTheme,
      themeMode: provider.crrentTheme,
    );
  }
}

