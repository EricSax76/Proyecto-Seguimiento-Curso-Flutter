import 'dart:io';

void main() {
  stdout.writeln(
    '¡Bienvenid@ a la dicoteca \nEsperaaa.....!!!\n¿Cuál es tu edad?',
  );
  // int? edad = 22;

  // int? edad = int.parse(stdin.readLineSync() ?? '0');

  int? edad = int.tryParse(stdin.readLineSync() ?? '0');

  print(edad);

  if (edad != null) {
    if (edad >= 21) {
      stdout.writeln(
        "Genial.... Puedes pasar y beber alcohol pero con moderación",
      );
    } else if (edad >= 18 && edad < 20) {
      stdout.writeln("'Genial.... Puedes pasar pero no beber alcohol");
    } else if (edad == 20) {
    } else {}
  } else {
    stdout.writeln("No se cual es tu edad :(");
  }
}
