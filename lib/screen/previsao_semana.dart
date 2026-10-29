import 'package:flutter/material.dart';

import '../widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  const PrevisaoSemanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Previsão da semana'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: 'Faixa de temperatura'),

          const SizedBox(height: 10),

          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          '18°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 70,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          '26°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 70,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          '31°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          const TituloSecao(titulo: 'Resumo do dia'),

          const SizedBox(height: 10),

          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xFF4FACFE), Color(0xFF00F2FE)],
                ),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny, color: Colors.white),
                    title: Text('Manhã', style: TextStyle(color: Colors.white)),
                    trailing: Text(
                      '20°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Divider(color: Colors.white54),

                  ListTile(
                    leading: Icon(Icons.sunny, color: Colors.yellow),
                    title: Text('Tarde', style: TextStyle(color: Colors.white)),
                    trailing: Text(
                      '29°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          const TituloSecao(titulo: 'Próximos dias'),

          const SizedBox(height: 10),

          _dia('Sexta', Icons.wb_sunny, Colors.amber, '18°C', '31°C'),

          _dia('Sábado', Icons.cloud, Colors.blueGrey, '19°C', '28°C'),

          _dia('Domingo', Icons.umbrella, Colors.blue, '20°C', '26°C'),

          _dia('Segunda', Icons.wb_sunny, Colors.amber, '17°C', '30°C'),

          _dia('Terça', Icons.cloud, Colors.blueGrey, '18°C', '29°C'),
        ],
      ),
    );
  }

  static Widget _dia(
    String dia,
    IconData icone,
    Color corIcone,
    String min,
    String max,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icone, color: corIcone, size: 30),
        title: Text(dia, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Mín: $min'),
        trailing: Text(
          'Máx: $max',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
