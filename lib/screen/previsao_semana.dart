import 'package:flutter/material.dart';

import '../widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  const PrevisaoSemanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Previsão da semana')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: 'Faixa de temperatura'),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.blue,
                  child: const Center(child: Text('18°C')),
                ),
              ),

              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.orange,
                  child: const Center(child: Text('26°C')),
                ),
              ),

              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.red,
                  child: const Center(child: Text('31°C')),
                ),
              ),
            ],
          ),

          const Divider(),

          const TituloSecao(titulo: 'Resumo do dia'),

          Container(
            height: 200,
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: const Center(child: Text('Manhã: 20°C')),
                  ),
                ),

                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(child: Text('Tarde: 29°C')),
                  ),
                ),
              ],
            ),
          ),

          const Divider(),

          const TituloSecao(titulo: 'Próximos dias'),

          _dia('Sexta', Icons.wb_sunny, '18°C', '31°C'),
          _dia('Sábado', Icons.cloud, '19°C', '28°C'),
          _dia('Domingo', Icons.umbrella, '20°C', '26°C'),
          _dia('Segunda', Icons.wb_sunny, '17°C', '30°C'),
          _dia('Terça', Icons.cloud, '18°C', '29°C'),
        ],
      ),
    );
  }

  Widget _dia(String dia, IconData icone, String min, String max) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(dia)),
          Icon(icone, size: 28),
          Expanded(child: Text(min)),
          Expanded(child: Text(max)),
        ],
      ),
    );
  }
}
