import 'dart:io';

void main() async {
  // await timeOut.then((text) {
  //   print(text);
  // });
  // print("¿Este código continua?");

  // String path =
  //     '/Users/josemanuelbarbasanchez/Desktop/Introduccion-dart-cifo/06_otros_tipos/assets/cursos.txt';

  String pathDirectorio = Directory.current.path;

  print(pathDirectorio);

  String texto = await leerArchivo(
    pathDirectorio + '/06_otros_tipos/assets/cursos.txt',
  );

  print(texto);
}

Future<String> timeOut = Future.delayed(Duration(seconds: 3), () {
  return '¡Aqui Está!';
});

Future<String> leerArchivo(String myArchivo) async {
  File file = File(myArchivo);

  String miTexto = await file.readAsString();

  return miTexto;
}
