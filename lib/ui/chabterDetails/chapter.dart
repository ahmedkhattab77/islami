import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Provider/settingsProvider.dart';
import 'package:islami/ui/home/quran/chapter_title_widget.dart';
import 'package:provider/provider.dart';


class ChapterView extends StatefulWidget {
static const String pageRaute = 'chapter' ;

  @override
  State<ChapterView> createState() => _ChapterViewState();
}

class _ChapterViewState extends State<ChapterView> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    Arges arges = ModalRoute
        .of(context)
        ?.settings
        .arguments as Arges;
    if (verses.isEmpty) {
      loadingFile(arges.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(settingsProvider.getBackGroundImage()),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arges.title,
            style: Theme.of(context).textTheme.headlineSmall,),
        ),
        body: Container(
          alignment: Alignment.center,
          child:verses.isEmpty? const CircularProgressIndicator():
          Card(
            margin: const EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: ListView.builder(
              itemBuilder: (context , index) => Text(
                '${verses[index]}{${index +1}}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,

              ),
              itemCount: verses.length,
            ),
          ),
        ),
      ),);
  }
List<String> verses = [] ;
  void loadingFile(int index) async{
     String fileContent =await rootBundle.loadString('assets/files/${index+1}.txt');
      verses = fileContent.split('\n');
      setState(() {

      });


  }
}
