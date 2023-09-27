import 'package:flutter/material.dart';
import 'package:islami/ui/MyTheneData.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('Ligth'),
         getUnselectedItem('Dark')
        ],

      ),
    );
  }
  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Light',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: MyTheme.lightPrimary,
          ),
          ),

        const Icon(Icons.check,
          color: MyTheme.lightPrimary,
        ),
      ],);
  }
  Widget getUnselectedItem(String text){

    return   Row(
      children: [
        Text('Dark',
          style: Theme.of(context).textTheme.titleMedium,),
      ],
    );
  }
}
