import 'package:flutter/material.dart';

class FlatButtons extends StatelessWidget {

  final String buttonText;
  final Color color;
  const FlatButtons(this.buttonText, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed:null, child: Text(buttonText, style: TextStyle(color: color),));
  }
}
