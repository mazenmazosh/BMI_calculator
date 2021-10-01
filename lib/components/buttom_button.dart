import 'package:flutter/material.dart';
import 'constant.dart';
class buttombutton extends StatelessWidget {
  buttombutton({@required this.onTap,@required this.button});
  final Function onTap;
  final String button;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFEB1555),
            borderRadius: BorderRadiusDirectional.circular(20.0)
        ),
        child: Center(child: Text(button,
          style: klargebuttonTextStyle,
        )
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 70.0,
      ),
    );
  }
}