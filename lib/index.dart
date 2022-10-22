import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'all_designstyle.dart';
import 'cart_content.dart';
import 'cart_item.dart';
import 'resultpage.dart';
import 'bottombutton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum Gender {
  male,
  female,
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;

  int height = 90;
  int weight = 40;
  int age = 16;
  String feet='3.0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      /*
                        GestureDetector look like a FlatButton difference that
                        FlatButton have default margin,padding and it's change our
                        design, but GestureDetector can not change our main design.
                         */
                      child: BodyDesign(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        mycolorp: selectedGender == Gender.male
                            ? kActiveColor
                            : kInactiveColor,
                        newchild: ReusableContent(
                          name: 'MALE',
                          myicon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    Expanded(
                      child: BodyDesign(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        mycolorp: selectedGender == Gender.female
                            ? kActiveColor
                            : kInactiveColor,
                        newchild: ReusableContent(
                          name: 'FEMALE',
                          myicon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: BodyDesign(
              newchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),

                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        feet,
                        style: kNumberStyle,
                      ),
                      Text(
                        'feet',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    // need for change slider custom property, like
                    // ovelycolor,thumbshape,ovelyshape etc.
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.white,
                      activeTickMarkColor: Colors.pink,
                      thumbColor: Colors.pink,
                      // overlayColor: Colors.pinkAccent,
                      // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      // overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 90,
                      max: 220,
                      activeColor: Colors.pink,
                      inactiveColor: Colors.blueGrey,
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                          feet=(newvalue/30.48).toStringAsFixed(1);
                        });

                        print((newvalue/30.48).toStringAsFixed(1));

                      },
                    ),
                  )
                ],
              ),
              mycolorp: kActiveColor,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: BodyDesign(
                      mycolorp: kActiveColor,
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Colors.blueGrey,
                                heroTag: 'btn1',
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Colors.blueGrey,
                                heroTag: 'btn2',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BodyDesign(
                      mycolorp: kActiveColor,
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Colors.blueGrey,
                                heroTag: 'btn3',
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Colors.blueGrey,
                                heroTag: 'btn4',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: BottomButton(
              onPress:  () {
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return Result(height: height, weight: weight,);
               }));
              },
              text: 'CALCULATE YOUR BMI',

            ),
          ),
        ],
      ),
    );
  }
}
