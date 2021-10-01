import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'reuseblecarf.dart';
class ResultsPage extends StatelessWidget {
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
                Text('Normal',style:kresultext,),
                Text('18.3',style: kbmitextstyl,),
                Text('Your BMI result is quite low, you should eat more',
                  style: kbodytext,
                  textAlign: TextAlign.center,)
              ],

            ),),
          )
        ],
      ),
    );
  }
}
