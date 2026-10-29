import 'package:flutter/material.dart';

import 'package:projeto_clima/screen/detalhes_avancados.dart';

import 'package:projeto_clima/widgets/cidade_card.dart';

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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Cidade Principal',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesAvancadosScreen(
                    cidade: '',
                    temperatura: '',
                  ),
                ),
              );
            },
            child: Card(
              color: Colors.blue.shade100,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Santo André',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text('26°C', style: TextStyle(fontSize: 40)),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Outras cidades',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesAvancadosScreen(
                    cidade: 'São Paulo',
                    temperatura: '24°C',
                  ),
                ),
              );
            },
            child: const CidadeCard(
              cidade: 'São Paulo',
              temperatura: '24°C',
              minima: '18°C',
              maxima: '29°C',
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesAvancadosScreen(
                    cidade: 'Campinas',
                    temperatura: '28°C',
                  ),
                ),
              );
            },
            child: const CidadeCard(
              cidade: 'Campinas',
              temperatura: '28°C',
              minima: '20°C',
              maxima: '31°C',
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesAvancadosScreen(
                    cidade: 'Santos',
                    temperatura: '25°C',
                  ),
                ),
              );
            },
            child: const CidadeCard(
              cidade: 'Santos',
              temperatura: '25°C',
              minima: '21°C',
              maxima: '27°C',
            ),
          ),
        ],
      ),
    );
  }
}
