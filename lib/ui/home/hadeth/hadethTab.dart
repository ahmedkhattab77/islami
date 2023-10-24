import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';
import 'package:islami/ui/home/hadeth/hadethTitel.dart';

class HadethTabView extends StatefulWidget {
  @override
  State<HadethTabView> createState() => _HadethTabViewState();
}

class _HadethTabViewState extends State<HadethTabView> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      lodingFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            'assets/images/hadeth_logo.png',
          ),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal:
                  BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 4,
                  ),
            ),
          ),
          child: Text(
            AppLocalizations.of(context)!.hadeth,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
          flex: 3,
          child: allHadeth.isEmpty
              ? const CircularProgressIndicator()
              : ListView.separated(
                  itemBuilder: (context, index) =>
                      HadethTitle(hadeth: allHadeth[index]),
                  separatorBuilder: (context, index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 70),
                    height: 2,
                    width: double.infinity,
                    color: Theme.of(context).primaryColor,
                  ),
                  itemCount: allHadeth.length,
                ),
        ),
      ],
    );
  }

  List<Hadeth> allHadeth = [];

  void lodingFile() async {
    String fileContant =
        await rootBundle.loadString('assets/files/ahadeth.txt');

    List<String> hadethList = fileContant.trim().split('#');
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLine = singleHadeth.trim().split('\n');
      String title = hadethLine[0];
      hadethLine.remove(0);
      String contant = hadethLine.join('\n');

      Hadeth hadeth = Hadeth(contant: contant, title: title);

      allHadeth.add(hadeth);
      setState(() {});
    }
  }
}
