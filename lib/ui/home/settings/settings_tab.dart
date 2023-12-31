import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/home/settings/language_bottom_sheet.dart';
import 'package:islami/ui/home/settings/theme_bottom_shet.dart';
import 'package:provider/provider.dart';

import '../../../Provider/settingsProvider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 64,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: (){
              showThemeBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 2,
                ),
              ),
              padding: EdgeInsets.all(12),
              width: double.infinity,
              child: Text(
                  settingsProvider.enableDark()
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(12),
              child:  Text(
                  settingsProvider.arabicEnable()
                      ? AppLocalizations.of(context)!.arabic
                      : AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
          ),
        ],
      ),
    );
  }

  void  showThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (context) {
      return  ThemeBottomSheet();
    });

  }

  void  showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (context) {
      return  LanguageBottomSheet();
    });
  }
}
