import 'package:flutter/material.dart';

import '../widgets/titulo_secao.dart';

class ClimaAtualScreen extends StatelessWidget {
  const ClimaAtualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clima atual')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: 'Cidade atual'),

          Container(
            color: Colors.lightBlue.shade100,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Belo Horizonte',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Minas Gerais'),
                ],
              ),
            ),
          ),

          const Divider(),

          const TituloSecao(titulo: 'Temperatura'),

          const Center(
            child: Column(
              children: [
                Text(
                  '26°C',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Sensação térmica: 28°C'),
              ],
            ),
          ),

          const Divider(),

          const TituloSecao(titulo: 'Condição do tempo'),

          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://picsum.photos/seed/picsum/600/300',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const Divider(),

          const TituloSecao(titulo: 'Detalhes'),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.water_drop, color: Colors.blue),
                  SizedBox(height: 4),
                  Text('Umidade'),
                  Text('80%'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.air, color: Colors.green),
                  SizedBox(height: 4),
                  Text('Vento'),
                  Text('15 km/h'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.speed, color: Colors.orange),
                  SizedBox(height: 4),
                  Text('Pressão'),
                  Text('1015 hPa'),
                ],
              ),
            ],
          ),

          const Divider(),

          const TituloSecao(titulo: 'Atualização'),

          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Atualizar'),
            ),
          ),

          const SizedBox(height: 16),

          Container(
            height: 80,
            color: Colors.grey.shade200,
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('Última atualização: 14:30'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
