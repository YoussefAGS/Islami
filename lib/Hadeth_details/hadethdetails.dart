import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrane/home/Ahadeth.dart';

import '../provider/my_provider.dart';

class hadethDetails extends StatelessWidget {
  static const String routeName = 'hadethDetails';


  @override
  Widget build(BuildContext context) {
    var provider2=Provider.of<MyProvider>(context);

    var arge = ModalRoute.of(context)?.settings.arguments as HadethData;
    String hadeth = arge.content.join();
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
              '${arge.title}',
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ListView.builder(
              itemBuilder: (_, index) => Text(
                    arge.content[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontSize: 20,
                        ),
                  ),
          itemCount: arge.content.length,))
    ]);
  }
}
