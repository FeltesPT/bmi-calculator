import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;

  GenderSelector(
      {@required this.icon, @required this.text, @required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        )
      ],
    );
  }
}
