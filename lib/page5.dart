import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
