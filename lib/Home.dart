// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print

// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:rolledice/controller/RollDiceFonctions.dart';  // صار مشكلة بي 
import 'package:rolledice/styled_text.dart';

var startAliginment = Alignment.topLeft;
var endAliginment = Alignment.bottomRight;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String activeimag ="images/dice-1.png"; 
  void rollDice(){
    var dice = Random().nextInt(6)+1 ; 
    setState(() {
      activeimag = "images/dice-$dice.png" ; 
    });
    print("Rolled ") ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrange,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 58, 31, 105),
              const Color.fromARGB(255, 122, 99, 162)
            ],
            begin: startAliginment,
            end: endAliginment,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Roll Dice App ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 200,),
            Center(
              child: Image.asset(activeimag  ,width: 200,),
            ),
            SizedBox(
              height: 200,
            ),
            MaterialButton(
              onPressed: () {
                rollDice(); 
              },
              child: Container(
                child: Center(child: TextOne(data: "Roll")),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 58, 31, 105),
                      const Color.fromARGB(255, 122, 99, 162)
                    ],
                    begin: endAliginment,
                    end: startAliginment,
                  ),
                ),
                height: 50,
                width: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Just Enter In Roll ",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
