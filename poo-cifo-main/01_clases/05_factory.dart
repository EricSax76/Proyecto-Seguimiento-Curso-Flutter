class Rectangulo {
  late int base;
  late int altura;
  late int area;
  late String tipo; //cuadrado => base = altura, resctanculo base != altura

  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = "Cuadrado";
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = "Rectangulo";
  }
}

void main() {
  // final figura = Rectangulo.cuadrado(base);
  // final figura2 = Rectangulo.rectangulo(base, altura);

  final figura = Rectangulo(10, 10);

  print(figura.tipo);

  print(figura.altura);
  print(figura.area);

  final figura2 = Rectangulo(10, 20);

  print(figura2.tipo);
  print(figura2.area);
}
