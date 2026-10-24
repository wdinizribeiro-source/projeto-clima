import 'package:flutter/material.dart';

import 'package:projeto_clima/screen/clima_atual.dart';
import 'package:projeto_clima/screen/detalhes_avancados.dart';
import 'package:projeto_clima/screen/previsao_semana.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ClimaApp')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ClimaAtualScreen()),
                );
              },
              child: const Text('Clima atual'),
            ),
          ),

          const SizedBox(height: 20),

          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PrevisaoSemanaScreen(),
                  ),
                );
              },
              child: const Text('Previsão da semana'),
            ),
          ),
          const SizedBox(height: 20),

          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DetalhesAvancadosScreen(),
                  ),
                );
              },
              child: const Text('Detalhes Avançados'),
            ),
          ),
        ],
      ),
    );
  }
}
