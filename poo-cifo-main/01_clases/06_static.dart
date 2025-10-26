class Herramientas {
  static const List<String> listado = [
    "Martillo",
    "LLave Inglesa",
    "Destornillador",
  ];

  static void imprimirListado() => listado.forEach(print);
}

void main(List<String> args) {
  // Herramientas.listado.add('Tenazas');
  // Podemos añadir elementos de alguna forma pero solo nos interesa leerlos

  print(Herramientas.listado);
  // final List<String> listadoHerramientas = Herramientas().listado;

  final List<String> listadoHerramientas = Herramientas.listado;

  Herramientas.imprimirListado();
}
