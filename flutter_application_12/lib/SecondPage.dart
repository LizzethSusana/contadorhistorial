import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int counter; 

  const SecondPage({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is the Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You're into the second page"),
            const SizedBox(height: 20),
            Text(
              "El contador vale: $counter", // mostramos el valor recibido
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // vuelve a la primera pantalla
              },
              child: const Text("Volver a la primera página"),
            ),
          ],
        ),
      ),
    );
  }
}
