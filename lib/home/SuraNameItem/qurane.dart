
import 'package:flutter/material.dart';
import 'package:qrane/home/SuraNameItem/suraNameItem.dart';
import 'package:qrane/my_themedata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Quran extends StatelessWidget {

  List<String> sura_name = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/images/Screenshot (1).png'),
          Divider(
            color: MyTHemeData.colorgolde,

            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.sura_name,
            style: Theme.of(context).textTheme.headline1?.copyWith(
              color: MyTHemeData.colorgolde,fontSize: 22
            ),
          ),
          Divider(
            color: MyTHemeData.colorgolde,

            thickness: 3,
          ),
          
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_,index)=>Divider(
                color: MyTHemeData.colorgolde,
                indent: 20,
                endIndent: 20,
                thickness: 1.5,
              ),

              itemCount: sura_name.length,
                itemBuilder: (_,index){
                return suraNameItem(suraName: sura_name[index],index: index,);

            }
            ),
          ),



        ],
      ),
    );
  }
}
