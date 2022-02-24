//  ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables
// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultPage.dart';
import 'ReusableBoxCard.dart';
import 'iconData.dart';
import 'finalCalculation.dart';

const activeCardColor = Colors.teal;
const inActiveCardColor = Color(0xFF1C1A2F);
const textLebel = TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900);

void main() {
  runApp(BMI_Calculator());
}

// ignore: camel_case_types
class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: const Color(0xFF0C0F1E),
      ),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  // const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inActiveCardColor;
  int hight = 180;
  int _age = 19;
  int weight = 60;
  // var bmi;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;

        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
        femaleCardColor = activeCardColor;
      }
    }
    // if (gender == 2) {
    //   if (femaleCardColor == inActiveCardColor) {
    //     femaleCardColor == activeCardColor;
    //     // maleCardColor == inActiveCardColor;
    //   } else {
    //     femaleCardColor = inActiveCardColor;
    //     // maleCardColor == activeCardColor;
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0C0F1E),
        title: Center(
            child: const Text(
          'BMI Calculator',
          style: textLebel,
        )),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableBoxCard(
                      carBoxColor: maleCardColor,
                      childcard: iconData(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableBoxCard(
                    carBoxColor: femaleCardColor,
                    childcard: iconData(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                    // Icon(fontAwso)
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableBoxCard(
                    carBoxColor: Color(0xFF121224),
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Hight',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Text(
                              hight.toString(),
                              style: textLebel,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(fontSize: 20.0),
                            )
                          ],
                        ),
                        Slider(
                          min: 120.0,
                          max: 220.0,
                          value: hight.toDouble(),
                          activeColor: Colors.teal,
                          inactiveColor: Colors.grey,
                          onChanged: (double newValue) {
                            setState(() {
                              hight = newValue.round();
                            });
                          },
                        ),
                      ],
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
                  child: ReusableBoxCard(
                    carBoxColor: Color(0xFF121224),
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: textLebel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.blueGrey,
                              child: Icon(
                                Icons.add,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              height: 10.0,
                              width: 50.0,
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableBoxCard(
                    carBoxColor: Color(0xFF121224),
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          _age.toString(),
                          style: textLebel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.blueGrey,
                              child: Icon(
                                Icons.add,
                              ),
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              },
                            ),
                            SizedBox(
                              height: 10.0,
                              width: 50.0,
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
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
          Expanded(
            child: GestureDetector(
              onTap: () {
                // ignore: unused_local_variable
                CalculateBrain cal =
                    CalculateBrain(hight: hight, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      calculate: cal.getCalculate(),
                      status: cal.getStatus(),
                      message: cal.getMassege(),
                    ),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CalculateButton(
                    buttonNamme: 'Calculate',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CalculateButton extends StatelessWidget {
  final String buttonNamme;

  const CalculateButton({required this.buttonNamme});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          buttonNamme,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      height: 50.0,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.teal,
    );
  }
}

// ignore: camel_case_types
