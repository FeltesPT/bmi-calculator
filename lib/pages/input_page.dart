import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/ReusableCard.dart';
import 'components/GenderSelector.dart';

const Color cardDefaultBgColor = Color(0xFF1D1E33);
const Color cardInactiveBgColor = Color(0xFF111328);
const double bottomContainerHeight = 80.0;
const Color textColor = Color(0xFF8D8E98);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                      colour: gender == Gender.male
                          ? cardDefaultBgColor
                          : cardInactiveBgColor,
                      cardChild: GenderSelector(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                        textColor: textColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      colour: gender == Gender.female
                          ? cardDefaultBgColor
                          : cardInactiveBgColor,
                      cardChild: GenderSelector(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                        textColor: textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: cardDefaultBgColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: cardDefaultBgColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: cardDefaultBgColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
