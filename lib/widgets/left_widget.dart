import 'package:flutter/material.dart';

class left_bar extends StatelessWidget {
  final double barwidth;

  const left_bar({Key key, @required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              color: Colors.blue),
        )
      ],
    );
  }
}
