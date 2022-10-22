import 'package:flutter/material.dart';
import 'all_designstyle.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.text, @required this.onPress});

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            text,
            style: kButtonText,
          ),
        ),
      ),
    );
  }
}
