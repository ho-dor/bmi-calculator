import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final String bmi;

  Result(@required this.bmi){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        color: Color(0xFF0a0e21),
        child: Center(
          child: Text(bmi,
          style: TextStyle(
            fontSize: 80.0,
            color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
