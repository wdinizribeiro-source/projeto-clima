import 'package:flutter/material.dart';
import 'package:projeto_clima/widgets/titulo_secao.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  const DetalhesAvancadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes Avançados')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: 'Alertas'),

          Card(
            child: ListTile(
              leading: const Icon(Icons.warning, color: Colors.orange),
              title: const Text('Chuva forte'),
              subtitle: const Text('Previsto para hoje às 18h'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.thunderstorm, color: Colors.red),
              title: const Text('Tempestade'),
              subtitle: const Text('Possibilidade durante a madrugada'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const Divider(),

          const TituloSecao(titulo: 'Indicadores'),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.sunny),
                    SizedBox(height: 8),
                    Text('6'),
                    Text('Índice UV'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.speed),
                    SizedBox(height: 8),
                    Text('1013 hPa'),
                    Text('Pressão'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.visibility),
                    SizedBox(height: 8),
                    Text('10 km'),
                    Text('Visibilidade'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.wb_twilight),
                    SizedBox(height: 8),
                    Text('06:15'),
                    Text('Nascer do Sol'),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),

          const TituloSecao(titulo: 'Condição do Tempo'),

          const SizedBox(height: 10),
          Stack(
            children: [
              Image.network(
                'https://picsum.photos/600/300',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              const Positioned(
                left: 16,
                bottom: 16,
                child: Text(
                  '26°C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Positioned(
                right: 16,
                top: 16,
                child: Icon(Icons.wb_sunny, color: Colors.white, size: 32),
              ),
            ],
          ),
          const Divider(),

          const TituloSecao(titulo: 'Tags'),

          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [
              Chip(label: Text('Chuva forte')),
              Chip(label: Text('UV alto')),
              Chip(label: Text('Vento moderado')),
              Chip(label: Text('Umidade alta')),
              Chip(label: Text('Frente fria')),
            ],
          ),
        ],
      ),
      
    );
  }
}
