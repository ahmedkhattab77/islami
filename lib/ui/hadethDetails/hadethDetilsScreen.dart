import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';

class HadethDetilsScreen extends StatelessWidget {
  const HadethDetilsScreen({Key? key}) : super(key: key);
  static const String routeName = 'hadethdeyilsScreen';

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/homePage.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.title,
          style: Theme.of(context).textTheme.headlineSmall,),
        ),
        body: Column(
          children: [
            Expanded(
            child:
              Card(
                margin: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                child: SingleChildScrollView(
                  child: Text(hadeth.contant,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,),
                )
              ),
            ),
          ],
        ),
      ),);
  }
}
