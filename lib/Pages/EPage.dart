import 'package:flutter/material.dart';
import 'package:examen/Logic/E_logic.dart';

class EPage extends StatelessWidget {
  final E_logic e_logic = E_logic(); 

  @override
  Widget build(BuildContext context) {
    final double eValue = e_logic.getE(1); 

    return Scaffold(
      appBar: AppBar(
        title: Text('Pi Display'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          eValue.toStringAsFixed(3),
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