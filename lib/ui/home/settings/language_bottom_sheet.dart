import 'package:flutter/material.dart';

import '../../MyTheneData.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('English'),
          getUnselectedItem('Arabic')
        ],

      ),
    );
  }
  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: MyTheme.lightPrimary,
          ),),

        Icon(Icons.check,
          color: MyTheme.lightPrimary,
        ),
      ],);
  }
  Widget getUnselectedItem(String text){

    return   Row(
      children: [
        Text(text,
          style:Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}