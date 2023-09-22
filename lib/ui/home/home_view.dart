import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth.dart';
import 'package:islami/ui/home/quran/quran.dart';
import 'package:islami/ui/home/radio.dart';
import 'package:islami/ui/home/sebha.dart';

class HomeView extends StatefulWidget {
  static const String pageRaute = ' home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/homePage.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'اسلامي',
            style: TextStyle(
              fontFamily: 'KOUFIBD',
            ),
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
              label: 'القران',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_sebha.png'),
              ),
              label: 'سبحه',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_hadeth.png'),

              ),
              label: 'احديث',
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/icon_radio.png'),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              label: 'راديو',
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> page = [

    QuranView(),
    SebhaView(),
    HadethView(),
    RadioView(),
  ];
}
