import 'package:flutter/material.dart';
import 'package:examen/Logic/Pi_logic.dart';

class PiPage extends StatelessWidget {
  final Pi_Logic piLogic = Pi_Logic(); 

  @override
  Widget build(BuildContext context) {
    final double piValue = piLogic.getPi(-1);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pi Display'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          piValue.toStringAsFixed(3),
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}