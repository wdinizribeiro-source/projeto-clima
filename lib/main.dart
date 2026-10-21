import 'package:flutter/material.dart';
import 'package:projeto_clima/widgets/titulo_secao.dart';
import 'package:projeto_clima/widgets/item_detalhe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WeatherApp'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Cidade atual
            const TituloSecao(titulo: 'Cidade atual'),
            const SizedBox(height: 10),
            const Text(
              'Rio de Janeiro',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Quinta-feira, 15 de outubro',
              style: TextStyle(fontSize: 16),
            ),

            const Divider(),

            // Temperatura
            const TituloSecao(titulo: 'Temperatura'),
            const SizedBox(height: 10),
            const Text(
              '26°C',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const Text(
              'Sensação térmica: 28°C',
              style: TextStyle(fontSize: 16),
            ),

            const Divider(),

            // Condição do tempo
            const TituloSecao(titulo: 'Condição do tempo'),
            const SizedBox(height: 10),
           Image.network(
              'https://cdn.pixabay.com/photo/2016/11/29/05/45/clouds-1867271_1280.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),

            const Divider(),

            // Detalhes
            const TituloSecao(titulo: 'Detalhes'),
            const SizedBox(height: 10),

        const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ItemDetalhe(
                  icone: Icons.water_drop,
                  cor: Colors.blue,
                  valor: '65%',
                ),
                ItemDetalhe(
                  icone: Icons.air,
                  cor: Colors.green,
                  valor: '12 km/h',
                ),
                ItemDetalhe(
                  icone: Icons.umbrella,
                  cor: Colors.purple,
                  valor: '30%',
                ),
              ],
            ),


            const SizedBox(height: 10),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('65%'), Text('12 km/h'), Text('30%')],
            ),

            const Divider(),

            // Atualização
            const TituloSecao(titulo: 'Atualização'),
            const SizedBox(height: 10),

            ElevatedButton(onPressed: () {}, child: const Text('Atualizar')),
          ],
        ),
      ),
    );
  }
}
