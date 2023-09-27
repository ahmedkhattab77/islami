import 'package:flutter/material.dart';
import 'package:islami/ui/hadethDetails/hadethDetilsScreen.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';

class HadethTitle extends StatelessWidget {
   HadethTitle({Key? key, required this.hadeth}) : super(key: key);
  Hadeth hadeth ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetilsScreen.routeName,arguments: hadeth);
      },
      child:
      Container(
        child: Text(hadeth.title,
          textAlign: TextAlign.center,
          style:Theme.of(context).textTheme.titleMedium,),
      ),
    );
  }
}
