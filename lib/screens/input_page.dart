import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reuseblecarf.dart';
import '../components/constant.dart';
import 'results_page.dart';
import '../components/round_icon.dart';
import '../components/buttom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
enum Gender{
  male,female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height=180;
  int weight=60;
  int age= 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(child:  Row(
            children: [
              Expanded(child: ReuseableCard(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.male;
                  });
                },
                colour:selectedGender==Gender.male?kactive:kinactive,
              cardChild: IconContent(ic:FontAwesomeIcons.male,
             te: 'MALE',
              ),
              ),),
              Expanded(child:ReuseableCard(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.female;
                  });
                },
                colour:selectedGender==Gender.female?kactive:kinactive,
              cardChild: IconContent(ic:FontAwesomeIcons.female,
                te: 'FEMALE',
              ),),
              ),
            ],
          ),
          ),
          Expanded(child:ReuseableCard(colour:kinactive,
          cardChild:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HEIGHT',style: klabelTextStyle,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$height',style: kvalueStyle),
                  Text('CM',style: klabelTextStyle,),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFF8D8E98),
                  activeTrackColor: Colors.white,
                  thumbColor: Color(0xFFEB1555),
                  overlayColor: Color(0x29EB1555),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
                child: Slider(value: height.toDouble(),
                min: 120,
                max: 250,
                onChanged: (double newValue){
                  setState(() {
                    height=newValue.round();

                  });
                },
                ),
              )
            ],
          )
            ,),

          ),
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseableCard(colour:kinactive,
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('WEIGHT',
                  style:klabelTextStyle,
                ),
                  Text('$weight',
                      style: kvalueStyle
                  ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    RoundIconButton(
      icon: FontAwesomeIcons.minus,
    weightchange: (){
      setState(() {
        weight--;
      });
    },),
    SizedBox(width: 15.0,),
    RoundIconButton(
        icon: FontAwesomeIcons.plus,
    weightchange: () {
      setState(() {
        weight++;
      });
    }
    ),

],)

  ],
              )
                ,), ),
              Expanded(child: ReuseableCard(colour:kinactive,
                  cardChild:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE',
                        style:klabelTextStyle,
                      ),
                      Text('$age',
                          style: kvalueStyle
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            weightchange: (){
                              setState(() {
                                age--;
                              });
                            },),
                          SizedBox(width: 15.0,),
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              weightchange: () {
                                setState(() {
                                  age++;
                                });
                              }
                          ),
                        ],)
                    ],
                  )
              ), ),
            ],
          ),),

          buttombutton(button: 'CALCULATE',
          onTap: (){
            CalculatorBrain calc = CalculatorBrain(height: height,weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context){
            return ResultsPage(
              bmiresult:calc.calculateBmi(),
              resulttext: calc.getResult(),
              interpretayion: calc.getInterpretation(),
            );
          },
          ),
          );
          },)
        ],
      ),
    );
  }
}




