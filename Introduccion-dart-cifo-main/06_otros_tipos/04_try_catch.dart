void main() async {
  await timeOut.then((texto) => print(texto)).catchError((error) {
    print(error);
  });

  print('Fin del main');
}

Future<String> timeOut = Future.delayed(Duration(seconds: 3), () {
  // try {
  //   if (1 == 1) {
  //     throw 'Este es mi error';
  //   }
  // } catch (e) {
  //   print(e);
  // }

  if (1 == 1) {
    throw 'Este es mi error';
  }

  return 'Retorno del Future';
});
