import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrane/provider/my_provider.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int couinter=0;
  int counter2 =0;
  double angle=30;
  List<String>sebha=[
    'سبحان الله',
    "لا اله الا الله",
    "الله اكبر",
  ];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height*0.45,
            width: double.infinity,
            child: Stack(

              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left:width*0.45,
                    child: Image.asset(
                      provider.sebhaheadTheme(),
                      fit: BoxFit.cover,
                      height: height*0.13,
                      width: width*0.2,)
                ),
                Positioned(
                  top: height*0.1,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        provider.sebhaTheme(),
                ),
                    )),

              ],
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              '${couinter}',
              style: Theme.of(context).textTheme.subtitle2,

            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: provider.crrentTheme==ThemeMode.light?
              Theme.of(context).colorScheme.primary:
              Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextButton(
                onPressed: (){
                  couinter=(couinter+1)%33;
                  if(couinter==0){
                    counter2=(counter2+1)%3;
                  }
                  angle=(angle==360?30:(angle+15));
                  setState(() {

                  });
                },
                child: Text(
                  sebha[counter2],

                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: provider.crrentTheme==ThemeMode.light?Colors.white:Colors.black,
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
