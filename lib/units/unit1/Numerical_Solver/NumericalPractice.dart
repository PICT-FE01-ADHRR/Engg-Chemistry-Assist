import 'package:flutter/material.dart';
import 'NumericalSolver.dart';

class NumericalPractice extends StatelessWidget {
  const NumericalPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numerical Practice'),
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: const Text(
                'Numerical Solver',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NumericalSolver()),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            height: 50,
            color: Colors.blue,
            child: ElevatedButton(
              child: const Text(
                'Random Numerical Generator',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.right,
              ),
              onPressed: () {
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ),
                );
                */
              },
            ),
          ),
        ],
      ),
    );
  }
}
