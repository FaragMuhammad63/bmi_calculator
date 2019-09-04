import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const Color activeCardColor = Color(0xFF1D1F33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int weight = 50;
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateGender(1);
                      });
                    },
                    child: ReUsableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                      color: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateGender(2);
                      });
                    },
                    child: ReUsableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                      color: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$weight ',
                        style: TextStyle(
                          fontSize: 50,

                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF8D8E98)
                        ),
                      ),
                    ],
                  ),

                  Slider(
                    value: weight.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        weight = newValue.round();
                      });
                    },
                    min: 20.0,
                    max: 200.0,
                    divisions: 90,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Colors.white10,
                  ),
                ],
              ),
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
  void updateGender(int gender) {
    // 1- male, 2- female
    if(gender==1){
      if(maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
    }
    else{
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    }
  }
}
