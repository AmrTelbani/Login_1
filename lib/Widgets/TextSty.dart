import 'package:flutter/material.dart';

class TextSty extends StatelessWidget {
  String text;

  TextSty(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(text, style: TextStyle(fontSize: 24, color: Colors.black,fontWeight: FontWeight.bold )),
    );
  }
}
