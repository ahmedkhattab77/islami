import 'package:flutter/material.dart';
import 'package:islami/ui/home/quran/chapter_title_widget.dart';

class QuranView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/qur2an_screen_logo.png'),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child:  Text('اسم السوره',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          decoration: BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 4
              ))
          ),
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder: (context, index) => ChapterTitleWidget(
                  title: ArSuras[index],
                index: index,

              ),
              separatorBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 70),
                    height: 2,
                    width: double.infinity,
                    color: Theme.of(context).primaryColor,
                  ),
              itemCount: ArSuras.length),
        )
      ],
    );
  }


}

List<String> ArSuras = [
  "الفاتحه",
  "البقرة",
  "آل عمران",
  "النساء",
  "المائدة",
  "الأنعام",
  "الأعراف",
  "الأنفال",
  "التوبة",
  "يونس",
  "هود",
  "يوسف",
  "الرعد",
  "إبراهيم",
  "الحجر",
  "النحل",
  "الإسراء",
  "الكهف",
  "مريم",
  "طه",
  "الأنبياء",
  "الحج",
  "المؤمنون",
  "النّور",
  "الفرقان",
  "الشعراء",
  "النّمل",
  "القصص",
  "العنكبوت",
  "الرّوم",
  "لقمان",
  "السجدة",
  "الأحزاب",
  "سبأ",
  "فاطر",
  "يس",
  "الصافات",
  "ص",
  "الزمر",
  "غافر",
  "فصّلت",
  "الشورى",
  "الزخرف",
  "الدّخان",
  "الجاثية",
  "الأحقاف",
  "محمد",
  "الفتح",
  "الحجرات",
  "ق",
  "الذاريات",
  "الطور",
  "النجم",
  "القمر",
  "الرحمن",
  "الواقعة",
  "الحديد",
  "المجادلة",
  "الحشر",
  "الممتحنة",
  "الصف",
  "الجمعة",
  "المنافقون",
  "التغابن",
  "الطلاق",
  "التحريم",
  "الملك",
  "القلم",
  "الحاقة",
  "المعارج",
  "نوح",
  "الجن",
  "المزّمّل",
  "المدّثر",
  "القيامة",
  "الإنسان",
  "المرسلات",
  "النبأ",
  "النازعات",
  "عبس",
  "التكوير",
  "الإنفطار",
  "المطفّفين",
  "الإنشقاق",
  "البروج",
  "الطارق",
  "الأعلى",
  "الغاشية",
  "الفجر",
  "البلد",
  "الشمس",
  "الليل",
  "الضحى",
  "الشرح",
  "التين",
  "العلق",
  "القدر",
  "البينة",
  "الزلزلة",
  "العاديات",
  "القارعة",
  "التكاثر",
  "العصر",
  "الهمزة",
  "الفيل",
  "قريش",
  "الماعون",
  "الكوثر",
  "الكافرون",
  "النصر",
  "المسد",
  "الإخلاص",
  "الفلق",
  "الناس"
];
