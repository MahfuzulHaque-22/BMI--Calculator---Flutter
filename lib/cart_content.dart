import 'package:flutter/material.dart';
import 'all_designstyle.dart';


class ReusableContent extends StatelessWidget {

  final String name;
  final IconData myicon;

  ReusableContent({@required this.name,@required this.myicon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myicon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(name,
          style:kTextStyle,
        ),
      ],
    );
  }
}