// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class iconData extends StatelessWidget {
  final IconData icon;
  final String label;

  // ignore: use_key_in_widget_constructors
  const iconData({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
          ),
        )
      ],
    );
  }
}
