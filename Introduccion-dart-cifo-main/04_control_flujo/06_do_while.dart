import 'dart:io';

void main() {
  String continuar = 'n';

  int? contadorEntradaPorTeclado;

  int contador = 0;

  do {
    print(continuar);
    contador++;

    contador = contadorEntradaPorTeclado ?? 0;
    print(contador);
    stdout.writeln('¿Desea continuar? (y/n)');
    continuar = stdin.readLineSync()!;
  } while (continuar == 'y');
}
