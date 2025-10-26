import 'dart:io';

void main() {
  for (var i = 0; i <= 10; i++) {
    print('index i: $i');
  }

  // Esto es un comentario

  /// Esto es otro comentario mas dinámico
  ///
  ///
  ///
  ///
  ///
  ///
  /// asdfasdf
  ///
  ///

  /*
  Otra forma de agregar comentarios
  dentro de estas llaves
*/

  //Dato de entrada: La base de de una tabla de multiplicar

  stdout.writeln('¿Cual es la base?');

  int numero = 0;

  int? numero2 = 5;

  int numero3 = numero2!;

  print(numero3);

  int? baseDelPrograma = int.tryParse(stdin.readLineSync() ?? '4');

  if (baseDelPrograma == null) {
    baseDelPrograma = 0;
  }

  print(baseDelPrograma);

  for (var i = 0; i <= 10; i++) {
    stdout.writeln(('$baseDelPrograma * $i = ${i * (baseDelPrograma)}'));
  }
}
