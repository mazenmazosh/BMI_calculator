import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/constant.dart';
import '../components/reuseblecarf.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiresult,@required this.resulttext,@required this.interpretayion});
  final String bmiresult;
  final String resulttext;
  final String interpretayion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result',style: ktitletext,
            ),
          )
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(colour: kinactive,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(resulttext.toUpperCase(),style:kresultext,),
                Text(bmiresult,style: kbmitextstyl,),
                Text(interpretayion,
                  style: kbodytext,
                  textAlign: TextAlign.center,),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 5),
            child: buttombutton(onTap: (){
              Navigator.pop(context);
            }, button:'RE-CALCULATE'),
          )
        ],
      ),
    );
  }
}
