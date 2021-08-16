import 'package:flutter/material.dart';

class Theme extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
          child:Text('GREEN', style: TextStyle(fontSize: 31, color: Colors.white))
      ),
      color: Colors.green,
      margin: EdgeInsets.all(6.0),
    );
  }
}