import 'dart:io';

void main() {
  //Imprimir en terminal o cmd
  stdout.writeln('¡Hola! ¿cuál es tu nombre?');

  //Leer información
  String? nombre = stdin.readLineSync();

  stdout.writeln('¡Encantado $nombre ¡Bienvenido al CIFO!');
}
