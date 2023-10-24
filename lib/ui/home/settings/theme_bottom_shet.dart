import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/MyTheneData.dart';
import 'package:provider/provider.dart';

import '../../../Provider/settingsProvider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
              settingsProvider.changeTheme(ThemeMode.light);
            },
            child: settingsProvider.enableDark()
                ? getUnselectedItem(AppLocalizations.of(context)!.dark)
                : getSelectedItem(AppLocalizations.of(context)!.dark),
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child: settingsProvider.enableDark()
                  ? getSelectedItem(AppLocalizations.of(context)!.light)
                  : getUnselectedItem(AppLocalizations.of(context)!.light))
        ],

      ),
    );
  }
  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
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
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
