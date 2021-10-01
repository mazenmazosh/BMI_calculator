import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
  IconContent({this.ic,this.te});
  final IconData ic;
  final String te;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ic,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(te,
          style: klabelTextStyle,
          ),
      ],);
  }
}