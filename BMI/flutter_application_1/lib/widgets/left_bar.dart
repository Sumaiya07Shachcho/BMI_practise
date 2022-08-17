import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter/material.dart';

class Left_bar extends StatelessWidget {
  final double barWidth = 30;
  // const Left_bar({required Key key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: accentHexColor),
        ),
      ],
    );
  }
}
