import 'package:flutter/material.dart';
import 'package:projeto_clima/screen/models/clima.dart';

class VerClima extends StatelessWidget {
  final Clima clima;

  const VerClima({super.key, required this.clima});

  Widget detalheCard(IconData icone, Color cor, String titulo, String valor) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(icone, color: cor, size: 32),
        title: Text(titulo),
        trailing: Text(
          valor,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(clima.cidade), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 6,
            color: Colors.blue.shade50,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Icon(Icons.cloud, size: 70, color: Colors.blue),

                  const SizedBox(height: 10),

                  Text(
                    clima.cidade,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    '${clima.temperaturaAtual}°C',
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          detalheCard(
            Icons.thermostat,
            Colors.red,
            'Temperatura Atual',
            '${clima.temperaturaAtual}°C',
          ),

          detalheCard(
            Icons.arrow_downward,
            Colors.blue,
            'Temperatura Mínima',
            '${clima.temperaturaMinima}°C',
          ),

          detalheCard(
            Icons.arrow_upward,
            Colors.orange,
            'Temperatura Máxima',
            '${clima.temperaturaMaxima}°C',
          ),

          detalheCard(
            Icons.water_drop,
            Colors.lightBlue,
            'Umidade',
            '${clima.umidade}%',
          ),

          detalheCard(
            Icons.cloud_queue,
            Colors.grey,
            'Chance de Chuva',
            '${clima.chanceChuva}%',
          ),
        ],
      ),
    );
  }
}
