//  ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables
// ignore_for_file: use_key_in_widget_constructors, file_names
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableBoxCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final carBoxColor;
  // ignore: prefer_typing_uninitialized_variables
  final childcard;

  // ignore: prefer_const_constructors_in_immutables
  ReusableBoxCard({
    @required this.carBoxColor,
    this.childcard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childcard,
      height: 250.0,
      width: 170.0,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: carBoxColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
