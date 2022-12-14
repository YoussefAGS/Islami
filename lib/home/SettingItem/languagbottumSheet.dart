import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrane/my_themedata.dart';
import 'package:qrane/provider/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changelanguage('en');
              Navigator.pop(context);


            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: provider.getcolour('en')),
                ),
                Icon(
                  Icons.done,
                  size: 30,
                  color:provider.getcolour('en'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              provider.changelanguage('ar');
              Navigator.pop(context);

            },

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Arabic',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color:provider.getcolour('ar'),
                  ),
                ),
                Icon(
                  Icons.done,
                  size: 30,
                  color:provider.getcolour('ar'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
