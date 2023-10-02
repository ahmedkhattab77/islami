import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../chabterDetails/chapter.dart';

class ChapterTitleWidget extends StatelessWidget {
   ChapterTitleWidget({required this.index,required this.title, Key? key}) : super(key: key);
  String title ;
  int index ;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: (){
      Navigator.pushNamed(
        context, ChapterView.pageRaute,
        arguments: Arges(index: index, title: title),
      );},
      child: Container(
        padding: EdgeInsets.all(6),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium
        ),
      ),
    );
  }
}


class Arges{
  String title;
  int index ;
  Arges({required this.index,
  required this.title,});
}