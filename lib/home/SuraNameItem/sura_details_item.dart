
import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String sura_item;
  int index;
  SuraDetailsItem({required this.sura_item,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${sura_item}(${index+1})',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
        fontSize: 20,
      ),
    );
  }
}
