import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../Provider/settingsProvider.dart';
import '../../MyTheneData.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLang('en');
              },
              child: settingsProvider.arabicEnable()
                  ? getSelectedItem(AppLocalizations.of(context)!.english)
                  : getUnselectedItem(AppLocalizations.of(context)!.english)),
          InkWell(
            onTap: () {
              settingsProvider.changeLang('ar');
            },
            child: settingsProvider.arabicEnable()
                ? getUnselectedItem(AppLocalizations.of(context)!.arabic)
                : getSelectedItem(AppLocalizations.of(context)!.arabic),
          )
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

        const Icon(
          Icons.check,
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