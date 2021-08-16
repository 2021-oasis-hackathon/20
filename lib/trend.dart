import 'package:flutter/material.dart';

class Trend extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Icon(Icons.table_chart, size: 150, color: Colors.white),
      ),
      color: Colors.blue,
      margin: EdgeInsets.all(6.0),
    );
  }
}
