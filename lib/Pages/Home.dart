import 'package:examen/Pages/EPage.dart';
import 'package:examen/Pages/PiPage.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
         backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  PiPage(),
                  ),
                );
              },
              child: const Text('Mostrar Pi'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  EPage(),
                  ),
                );
              },
              child: const Text('Mostrar E'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Cierra la aplicación
                Future.delayed(Duration.zero, () => Navigator.of(context).pop());
              },
              child: const Text('Salir'),
            ),
          ],
        ),
      ),
    );
  }
}