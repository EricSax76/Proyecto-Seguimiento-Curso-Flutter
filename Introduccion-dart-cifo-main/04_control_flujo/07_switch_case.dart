import 'dart:math';

void main() {
  int rnd = Random().nextInt(3);

  print(rnd);

  // if (rnd == 0) {
  //   print("Lunes");
  // } else if (rnd == 1) {
  //   print("Martes");
  // } else if (rnd == 2) {
  //   print("Miercoles");
  // } else {
  //   print("No es un día de la semana");
  // }

  // if (rnd == 0) {
  //   print("Lunes");
  // }
  // if (rnd == 1) {
  //   print("Martes");
  // }
  // if (rnd == 2) {
  //   print("Miercoles");
  // }
  // if (rnd != 1 && rnd != 0 && rnd != 3) {
  //   print("No es un día de la semana");
  // }

  switch (rnd) {
    case 0:
      print("lunes");
  }

  String? nombre;

  print(nombre);

  switch (nombre) {
    case "Jose":
      print("Tu eres Jose!!!!");

    default:
      (print("No tienes un nombre típico"));
  }

  print("Continuará.....");
}
