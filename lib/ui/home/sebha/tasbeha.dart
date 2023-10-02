import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({Key? key}) : super(key: key);

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {


  int tasbehCount = 0;
  List<String> tasbehTitle =['سبجان الله',
    'الحمد الله',
    'الله اكبر',
    'لا اله الا الله',
    'لا حوله ولا قوه الا بالله',
  ];
  int indexTasbeh =0 ;
  double angle= 0;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(width: double.infinity,
      child: Column(
        children: [
          Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head_sebha_logo.png'),
            Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height*.095),
                child: GestureDetector(

                  onTap: (){
                    tasbehCount++;
                    angle+=2;
                    if(tasbehCount%33==0){
                      indexTasbeh++;
                    }
                    if(indexTasbeh==5){
                      indexTasbeh=0;

                    }
                    setState(() {

                    });
                  },
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset('assets/images/body_sebha_logo.png')),),),


          ],
        ),
       const Text('عدد التسبيحات',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),),

          const SizedBox(height: 10,),


          Container(
            margin:const EdgeInsets.only(bottom: 15),
            padding:const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(tasbehCount.toString(),
            style:const TextStyle(fontSize: 25,
              fontWeight: FontWeight.w400,
            ),),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              tasbehTitle[indexTasbeh],
              style:const TextStyle(fontSize: 25,
                fontWeight: FontWeight.w400,
              ),),
          ),
        ],
      ),
    );
  }
}
