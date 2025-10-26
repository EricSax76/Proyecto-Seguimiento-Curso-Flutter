class Cuadrado {
  final int lado;
  final int area;

  Cuadrado(int lado) : this.lado = lado, this.area = lado * lado;

  // set bio(int num) {
  //   area = 80;
  // }
}

void main() {
  final miCuadrado = Cuadrado(10);

  print(miCuadrado.lado);
  print(miCuadrado.area);
}
