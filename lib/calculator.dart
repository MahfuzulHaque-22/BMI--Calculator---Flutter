import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class BMI {
  int height;
  int weight;
  double _bmi =0;

  BMI({@required this.height, @required this.weight}

  );

  String getBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getCondition() {
    _bmi = (weight / pow(height / 100, 2));
    if (_bmi > 18.5 && _bmi<25) {
      return 'NORMAL';
    }
   else if (_bmi >= 25) {
    return 'OVERWEIGHT';
    }
    else {
      print(_bmi);
      return 'UNDERWEIGHT';
    }
  }

  String getData() {
    _bmi = (weight / pow(height / 100, 2));

    if (_bmi >= 25) {
      return 'YOU HAVE A HIGHER THEN NORMAL BODY WEIGHT. TRY TO EXERCISE MORE.';
    } else if (_bmi > 18.5) {
      return 'YOU HAVE NORMAL BODY WEIGHT. GOOD JOB!';
    } else {
      return 'YOU HAVE A LOWER THEN NORMAL BODY WEIGHT, YOU CAN EAT A BIT MORE!';
    }
  }
}
