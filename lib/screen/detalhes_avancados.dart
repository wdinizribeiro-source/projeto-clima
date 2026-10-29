import 'package:flutter/material.dart';
import 'package:projeto_clima/widgets/titulo_secao.dart';
import 'package:projeto_clima/screen/previsao_semana.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  final String cidade;
  final String temperatura;

  const DetalhesAvancadosScreen({
    super.key,
    required this.cidade,
    required this.temperatura,
  });

  Widget indicadorCard(IconData icone, Color cor, String valor, String titulo) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, color: cor, size: 35),
            const SizedBox(height: 10),
            Text(
              valor,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(titulo),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cidade), centerTitle: true),
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

          const SizedBox(height: 20),

          const TituloSecao(titulo: 'Indicadores'),

          const SizedBox(height: 10),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              indicadorCard(Icons.sunny, Colors.amber, '6', 'Índice UV'),
              indicadorCard(Icons.speed, Colors.blue, '1013 hPa', 'Pressão'),
              indicadorCard(
                Icons.visibility,
                Colors.green,
                '10 km',
                'Visibilidade',
              ),
              indicadorCard(
                Icons.wb_twilight,
                Colors.deepOrange,
                '06:15',
                'Nascer do Sol',
              ),
            ],
          ),

          const SizedBox(height: 20),

        const TituloSecao(titulo: 'Condição do Tempo'),

          const SizedBox(height: 10),

          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [Color(0xFF1E88E5), Color(0xFF64B5F6)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.wb_sunny, color: Colors.white, size: 60),

                    SizedBox(height: 20),

                    Text(
                      '26°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      'Ensolarado',
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),

                    SizedBox(height: 12),

                    Text(
                      'Sensação térmica: 29°C',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const TituloSecao(titulo: 'Tags'),

          const SizedBox(height: 10),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              Chip(
                avatar: Icon(Icons.cloud, size: 18),
                label: Text('Chuva forte'),
              ),
              Chip(
                avatar: Icon(Icons.wb_sunny, size: 18),
                label: Text('UV alto'),
              ),
              Chip(
                avatar: Icon(Icons.air, size: 18),
                label: Text('Vento moderado'),
              ),
              Chip(
                avatar: Icon(Icons.water_drop, size: 18),
                label: Text('Umidade alta'),
              ),
              Chip(
                avatar: Icon(Icons.ac_unit, size: 18),
                label: Text('Frente fria'),
              ),
            ],
          ),

          const SizedBox(height: 30),

          SizedBox(
            height: 50,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.calendar_month),
              label: const Text('Ver previsão da semana'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PrevisaoSemanaScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
