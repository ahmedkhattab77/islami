import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/home/hadeth/hadethTab.dart';
import 'package:islami/ui/home/quran/quran.dart';
import 'package:islami/ui/home/radio/radio.dart';
import 'package:islami/ui/home/sebha/tasbeha.dart';
import 'package:islami/ui/home/settings/settings_tab.dart';
import 'package:provider/provider.dart';

import '../../Provider/settingsProvider.dart';

class HomeView extends StatefulWidget {
  static const String pageRaute = ' home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(settingsProvider.getBackGroundImage()),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(
            AppLocalizations.of(context)!.app_name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: page[selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectIndex= index;
            });
          },
          currentIndex: selectIndex,
          items:  [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_quran.png'),
              ),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_sebha.png'),
              ),
              label: AppLocalizations.of(context)!.tasbeh,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_hadeth.png'),
              ),
              label: AppLocalizations.of(context)!.hadeth,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/icon_radio.png'),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.settings,
              ),
              backgroundColor: Theme.of(context).primaryColor,
              label: AppLocalizations.of(context)!.setting,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> page = [

    QuranView(),
    TasbehTab(),
    HadethTabView(),
    RadioView(),
    SettingsTab(),
  ];
}
