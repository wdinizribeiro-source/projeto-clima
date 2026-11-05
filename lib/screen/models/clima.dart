class Clima {
  final String cidade;
  final double temperaturaAtual;
  final double temperaturaMinima;
  final double temperaturaMaxima;
  final int umidade;
  final double chanceChuva;

  const Clima({
    required this.cidade,
    required this.temperaturaAtual,
    required this.temperaturaMinima,
    required this.temperaturaMaxima,
    required this.umidade,
    required this.chanceChuva,
  });
}