import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/quran/chapter_title_widget.dart';


class ChapterView extends StatefulWidget {
static const String pageRaute = 'chapter' ;

  @override
  State<ChapterView> createState() => _ChapterViewState();
}

class _ChapterViewState extends State<ChapterView> {
  @override
  Widget build(BuildContext context) {
    Arges arges = ModalRoute.of(context)?.settings.arguments as Arges ;
    if(verses.isEmpty){
      loadingFile(arges.index);
    }
    return  Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/homePage.png'),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(arges.title),
          ),
          body: Container(
            alignment: Alignment.center,
            child:verses.isEmpty? const CircularProgressIndicator():
            Card( 
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              child: ListView.builder(
                  itemBuilder: (context , index) => Text(
                     '${verses[index]}{$index}',
                    textAlign: TextAlign.end,style: TextStyle(fontSize: 20),
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
