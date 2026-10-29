import 'package:flutter/material.dart';

class CidadeCard extends StatelessWidget {
  final String cidade;
  final String temperatura;
  final String minima;
  final String maxima;

  const CidadeCard({
    super.key,
    required this.cidade,
    required this.temperatura,
    required this.minima,
    required this.maxima,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.wb_sunny, color: Colors.orange),
        title: Text(cidade),
        subtitle: Text('Min: $minima | Max: $maxima'),
        trailing: Text(
          temperatura,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
