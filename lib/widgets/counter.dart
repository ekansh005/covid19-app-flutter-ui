import 'package:covid19/constants.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final Color circleColor;
  final int number;
  final String name;
  const Counter({
    Key key,
    this.circleColor,
    this.number,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: circleColor.withOpacity(0.26),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: circleColor),
              ),
            )
          ],
        ),
        Text(
          '$number',
          style: TextStyle(color: circleColor, fontSize: 30),
        ),
        Text(
          name,
          style: TextStyle(color: kTextLightColor),
        )
      ],
    );
  }
}
