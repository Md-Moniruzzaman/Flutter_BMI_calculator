// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:sample_project/main.dart';

import 'ReusableBoxCard.dart';

const normalTextStyle = TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold);

class ResultPage extends StatelessWidget {
  final String calculate;
  final String status;
  final String message;

  // ignore: use_key_in_widget_constructors
  const ResultPage(
      {required this.calculate, required this.status, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            'BMI Result',
            style: textLebel,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Your BMI Result',
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableBoxCard(
              carBoxColor: Color(0xFF121224),
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    status,
                    style: normalTextStyle,
                  ),
                  Text(
                    calculate,
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CalculateButton(
                    buttonNamme: 'Recalculate',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
