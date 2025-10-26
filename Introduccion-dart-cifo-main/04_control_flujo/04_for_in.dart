void main() {
  List<String> listado = ['Curso', 'CIFO', 'Introduccion a Dart'];

  // for (var i = 0; i <= listado.length - 1; i++) {
  //   print(listado[i]);
  // }

  for (String nombre in listado) {
    print(nombre);
  }
}
