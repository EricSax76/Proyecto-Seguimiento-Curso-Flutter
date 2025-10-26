import 'dart:io';

void main() {
  /*
  String continuar = 'y';

  int contador = 0;

  while (continuar == 'y') {
    print(contador);
    contador++;
    print(contador);

    stdout.writeln('¿Desea continual)? (y/n)');

    continuar = stdin.readLineSync()!;
  }
  */

  String continuar = 'y';
  int contador = 0;

  List<String> condiciones = [
    "curso numero 1",
    "curso numero 2",
    "curso numero 3",
  ];

  while (continuar == 'y') {
    if (contador < condiciones.length) {
      contador++;
      print(contador);
    } else {
      print(continuar);
      break;
    }

    print("Hola!!");
  }

  print("El código continua");
}
