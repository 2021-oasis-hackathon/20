import 'package:flutter/material.dart';

class Theme extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
          child:GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                ),
              );
            }),
          ),
      ),
      color: Colors.green,
      margin: EdgeInsets.all(6.0),
    );
  }
}