
import 'package:bmi_calculator/all_designstyle.dart';
import 'package:bmi_calculator/bottombutton.dart';
import 'package:bmi_calculator/cart_content.dart';
import 'package:bmi_calculator/cart_item.dart';
import 'package:flutter/material.dart';
import 'calculator.dart';

class Result extends StatelessWidget {

  Result({@required this.height,@required this.weight});

  final height;
  final weight;


  @override
  Widget build(BuildContext context) {

    BMI bmi=BMI(height: height,weight: weight);

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Expanded(
           child: Container(
             color: kMyBackgroundColor,
             padding: EdgeInsets.all(20.0),
             child: Text('YOUR RESULT',
             textAlign: TextAlign.left,
             style: kTitleStyle,),
           ),
         ),
         Expanded(
           flex: 5,
           child: BodyDesign(
             mycolorp: kActiveColor,
             onPress:null,
             newchild: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text(bmi.getCondition(),
                 style: kBmiText,),
                 Text(bmi.getBMI(),
                 style: kNumberStyleBmi,)
                 ,
                 Text(bmi.getData(),
                 textAlign: TextAlign.center,
                 style: kTextStyle,),

               ],
             ),
           ),
         ),
         Expanded(
           child:  BottomButton(
             text: 'RE CALCULATE',
             onPress: (){
               print(height);
               print(weight);

              Navigator.pop(context);
             },
           ),
         )
       ],
     ),
    );
  }
}
