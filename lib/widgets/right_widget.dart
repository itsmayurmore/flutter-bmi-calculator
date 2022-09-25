import 'package:flutter/material.dart';

class right_bar extends StatelessWidget {
  final double barwidth;

  const right_bar({Key key, @required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              color: Colors.blue),
        )
      ],
    );
  }
}
