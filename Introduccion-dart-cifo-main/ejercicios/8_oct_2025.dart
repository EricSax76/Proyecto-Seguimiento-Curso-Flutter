// ==========================================================
// Ejercicios 8-Oct-2025
// Controles de flujo en Dart
// Bloque 1: Condicionales  |  Bloque 2: Bucles
// ==========================================================

import 'dart:io';

// ==========================================================
// BLOQUE 1: CONDICIONALES (if, else if, switch)
// ==========================================================

// 1. Número mayor o menor que 100
void mayorQue100() {
  stdout.write("Introduce un número: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 100) {
    print("El número es mayor que 100");
  } else if (numero < 100) {
    print("El número es menor que 100");
  } else {
    print("El número es igual a 100");
  }
}

// 2. Clasificación de edades
void clasificacionEdad() {
  stdout.write("Introduce tu edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  if (edad < 12) {
    print("Niño");
  } else if (edad < 18) {
    print("Adolescente");
  } else {
    print("Adulto");
  }
}

// 3. Día de la semana
void diaDeLaSemana() {
  stdout.write("Introduce un número del 1 al 7: ");
  int dia = int.parse(stdin.readLineSync()!);

  switch (dia) {
    case 1:
      print("Lunes");
      break;
    case 2:
      print("Martes");
      break;
    case 3:
      print("Miércoles");
      break;
    case 4:
      print("Jueves");
      break;
    case 5:
      print("Viernes");
      break;
    case 6:
      print("Sábado");
      break;
    case 7:
      print("Domingo");
      break;
    default:
      print("Número inválido");
  }
}

// 4. Nota final del alumno
void notaFinal() {
  stdout.write("Introduce la nota (0–10): ");
  double nota = double.parse(stdin.readLineSync()!);

  if (nota < 5) {
    print("Suspenso");
  } else if (nota < 7) {
    print("Aprobado");
  } else if (nota < 9) {
    print("Notable");
  } else {
    print("Sobresaliente");
  }
}

// 5. Menú de operaciones
void menuOperaciones() {
  print("=== MENÚ DE OPERACIONES ===");
  print("1. Sumar");
  print("2. Restar");
  print("3. Multiplicar");
  print("4. Dividir");
  stdout.write("Elige una opción (1–4): ");
  int opcion = int.parse(stdin.readLineSync()!);

  stdout.write("Introduce el primer número: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Introduce el segundo número: ");
  double b = double.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      print("Resultado: ${a + b}");
      break;
    case 2:
      print("Resultado: ${a - b}");
      break;
    case 3:
      print("Resultado: ${a * b}");
      break;
    case 4:
      if (b == 0) {
        print("Error: división entre cero");
      } else {
        print("Resultado: ${a / b}");
      }
      break;
    default:
      print("Opción inválida");
  }
}

// ==========================================================
// BLOQUE 2: BUCLES (for, for-in, while, do-while)
// ==========================================================

// 1. Contar del 1 al 10
void contarUnoADiez() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// 2. Suma de números pares del 1 al 50
void sumaPares() {
  int suma = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 2 == 0) {
      suma += i;
    }
  }
  print("Suma de pares del 1 al 50: $suma");
}

// 3. Tabla de multiplicar
void tablaMultiplicar() {
  stdout.write("Introduce un número: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$n x $i = ${n * i}");
  }
}

// 4. Recorrer lista de frutas
void recorrerFrutas() {
  List<String> frutas = ["Manzana", "Pera", "Plátano", "Naranja", "Kiwi"];
  for (String fruta in frutas) {
    print(fruta);
  }
}

// 5. Buscar elemento en lista
void buscarNombre() {
  List<String> nombres = ["Ana", "Luis", "Carlos", "María", "Elena"];
  stdout.write("Introduce un nombre: ");
  String nombre = stdin.readLineSync()!;
  if (nombres.contains(nombre)) {
    print("$nombre está en la lista");
  } else {
    print("$nombre no está en la lista");
  }
}

// 6. Cuenta regresiva desde n hasta 1
void cuentaRegresiva() {
  stdout.write("Introduce un número: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = n; i >= 1; i--) {
    print(i);
  }
}

// 7. Suma de entradas del usuario
void sumaDeEntradas() {
  int suma = 0;
  for (int i = 1; i <= 5; i++) {
    stdout.write("Introduce número $i: ");
    int num = int.parse(stdin.readLineSync()!);
    suma += num;
  }
  print("La suma total es: $suma");
}

// 8. Adivina el número secreto
void adivinaNumero() {
  const int secreto = 7;
  int intento = -1;

  while (intento != secreto) {
    stdout.write("Adivina el número (1–10): ");
    intento = int.parse(stdin.readLineSync()!);

    if (intento < secreto) {
      print("Demasiado bajo");
    } else if (intento > secreto) {
      print("Demasiado alto");
    } else {
      print("¡Correcto!");
    }
  }
}

// 9. Contador de intentos (versión extendida del anterior)
void adivinaConIntentos() {
  const int secreto = 7;
  int intento = -1;
  int intentos = 0;

  while (intento != secreto) {
    stdout.write("Adivina el número (1–10): ");
    intento = int.parse(stdin.readLineSync()!);
    intentos++;

    if (intento < secreto) {
      print("Demasiado bajo");
    } else if (intento > secreto) {
      print("Demasiado alto");
    } else {
      print("¡Correcto! Intentos usados: $intentos");
    }
  }
}

// 10. Confirmación de salida
void confirmacionSalida() {
  String respuesta;
  do {
    stdout.write("¿Deseas continuar? (s/n): ");
    respuesta = stdin.readLineSync()!.toLowerCase();
  } while (respuesta != "n");

  print("Programa finalizado.");
}

// ==========================================================
// MAIN PRINCIPAL PARA PRUEBAS
// ==========================================================

void main() {
  // --- Bloque 1: Condicionales ---
  mayorQue100();
  clasificacionEdad();
  diaDeLaSemana();
  notaFinal();
  menuOperaciones();

  // --- Bloque 2: Bucles ---
  contarUnoADiez();
  sumaPares();
  tablaMultiplicar();
  recorrerFrutas();
  buscarNombre();
  cuentaRegresiva();
  sumaDeEntradas();
  adivinaNumero();
  adivinaConIntentos();
  confirmacionSalida();
}
