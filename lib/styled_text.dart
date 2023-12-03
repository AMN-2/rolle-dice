// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TextOne extends StatelessWidget {
   TextOne({super.key , required this.data});
  String data  ; 

  @override
  Widget build(BuildContext context) {
    return  Text(
      data,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
