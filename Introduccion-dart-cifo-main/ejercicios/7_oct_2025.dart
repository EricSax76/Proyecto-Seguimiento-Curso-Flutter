// ==========================================================
// Ejercicios 7-Oct-2025
// Control de flujo: if / else, for, for-in, retos combinados
// ==========================================================

import 'dart:io';

// ==========================================================
// BLOQUE 1 – CONDICIONALES if / else
// ==========================================================

// 1. Comprueba si un número es positivo o negativo
void positivoNegativo() {
  stdout.write("Introduce un número: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num >= 0) {
    print("El número es positivo");
  } else {
    print("El número es negativo");
  }
}

// 2. Par o impar
void parOImpar() {
  stdout.write("Introduce un número: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("El número es par");
  } else {
    print("El número es impar");
  }
}

// 3. Mayor o menor de edad
void mayorDeEdad() {
  stdout.write("Introduce tu edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  if (edad >= 18) {
    print("Eres mayor de edad");
  } else {
    print("Eres menor de edad");
  }
}

// 4. Entre 10 y 50
void entre10y50() {
  stdout.write("Introduce un número: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num >= 10 && num <= 50) {
    print("El número está entre 10 y 50");
  } else {
    print("El número NO está entre 10 y 50");
  }
}

// 5. Validar contraseña
void validarClave() {
  stdout.write("Introduce la contraseña: ");
  String clave = stdin.readLineSync()!;

  if (clave == "1234") {
    print("Contraseña correcta");
  } else {
    print("Contraseña incorrecta");
  }
}

// 6. Comparar dos números
void compararNumeros() {
  stdout.write("Primer número: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Segundo número: ");
  int b = int.parse(stdin.readLineSync()!);

  if (a > b) {
    print("$a es mayor que $b");
  } else if (a < b) {
    print("$b es mayor que $a");
  } else {
    print("Son iguales");
  }
}

// 7. Nota aprobada o suspendida
void notaAlumno() {
  stdout.write("Introduce tu nota (0–10): ");
  double nota = double.parse(stdin.readLineSync()!);

  if (nota >= 5) {
    print("Aprobado");
  } else {
    print("Suspenso");
  }
}

// 8. Vocal o consonante
void vocalConsonante() {
  stdout.write("Introduce una letra: ");
  String letra = stdin.readLineSync()!.toLowerCase();

  if ("aeiou".contains(letra)) {
    print("Es una vocal");
  } else {
    print("Es una consonante");
  }
}

// 9. Múltiplo de 3 y 5
void multiplo3y5() {
  stdout.write("Introduce un número: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 3 == 0 && num % 5 == 0) {
    print("Es múltiplo de 3 y de 5");
  } else {
    print("No es múltiplo de 3 y 5 simultáneamente");
  }
}

// 10. Igual, menor o mayor que 100
void compararCon100() {
  stdout.write("Introduce un número: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num > 100) {
    print("Mayor que 100");
  } else if (num < 100) {
    print("Menor que 100");
  } else {
    print("Igual a 100");
  }
}

// ==========================================================
// BLOQUE 2 – BUCLES for
// ==========================================================

// 1. Números del 1 al 10
void unoADiez() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// 2. Números pares del 1 al 20
void paresHasta20() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) print(i);
  }
}

// 3. Tabla de multiplicar
void tablaMultiplicar() {
  stdout.write("Introduce un número: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$n x $i = ${n * i}");
  }
}

// 4. Suma del 1 al 100
void sumaCien() {
  int suma = 0;
  for (int i = 1; i <= 100; i++) {
    suma += i;
  }
  print("Suma total = $suma");
}

// 5. Múltiplos de 3 hasta 30
void multiplos3() {
  for (int i = 3; i <= 30; i += 3) {
    print(i);
  }
}

// 6. Números divisibles por 7 entre 1 y 50
void divisiblesPor7() {
  int contador = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 7 == 0) contador++;
  }
  print("Hay $contador números divisibles por 7 entre 1 y 50");
}

// 7. Factorial
void factorial() {
  stdout.write("Introduce un número: ");
  int n = int.parse(stdin.readLineSync()!);
  int resultado = 1;

  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  print("El factorial de $n es $resultado");
}

// 8. Descendente del 10 al 1
void descendente() {
  for (int i = 10; i >= 1; i--) {
    print(i);
  }
}

// 9. Cuenta atrás desde número ingresado
void cuentaAtras() {
  stdout.write("Introduce un número: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = n; i >= 0; i--) {
    print(i);
  }
}

// 10. Suma de pares del 1 al 50
void sumaPares() {
  int suma = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 2 == 0) suma += i;
  }
  print("Suma de pares = $suma");
}

// ==========================================================
// BLOQUE 3 – BUCLES for-in CON LISTAS
// ==========================================================

// 1. Imprimir lista de nombres
void imprimirNombres() {
  List<String> nombres = ["Ana", "Luis", "María", "Pedro"];
  for (var nombre in nombres) {
    print(nombre);
  }
}

// 2. Mostrar números mayores de 10
void mayoresDe10() {
  List<int> numeros = [4, 11, 8, 23, 15];
  for (int n in numeros) {
    if (n > 10) print(n);
  }
}

// 3. Sumar todos los valores de una lista
void sumarLista() {
  List<int> numeros = [1, 2, 3, 4, 5];
  int suma = 0;
  for (int n in numeros) {
    suma += n;
  }
  print("Suma total = $suma");
}

// 4. Buscar número 7 en lista
void buscarSiete() {
  List<int> numeros = [3, 5, 7, 9];
  for (int n in numeros) {
    if (n == 7) print("¡Se encontró el 7!");
  }
}

// 5. Nombres que empiecen por “A”
void nombresConA() {
  List<String> nombres = ["Ana", "Luis", "Andrés", "Bea"];
  for (String nombre in nombres) {
    if (nombre.startsWith("A")) print(nombre);
  }
}

// 6. Notas aprobadas (≥5)
void notasAprobadas() {
  List<double> notas = [4.5, 7.0, 9.2, 3.8, 5.5];
  for (double nota in notas) {
    if (nota >= 5) print("Aprobado: $nota");
  }
}

// 7. Contar nombres con más de 4 letras
void nombresLargos() {
  List<String> nombres = ["Ana", "Carlos", "María", "Paco"];
  int contador = 0;
  for (String n in nombres) {
    if (n.length > 4) contador++;
  }
  print("Hay $contador nombres con más de 4 letras");
}

// 8. Calcular total de precios
void totalPrecios() {
  List<double> precios = [10.0, 5.5, 7.2, 12.3];
  double total = 0;
  for (double p in precios) {
    total += p;
  }
  print("Total = $total");
}

// 9. Convertir lista a mayúsculas
void listaMayusculas() {
  List<String> palabras = ["hola", "mundo", "dart"];
  for (String palabra in palabras) {
    print(palabra.toUpperCase());
  }
}

// 10. Mayores de edad
void mayoresEdad() {
  List<int> edades = [15, 20, 17, 25, 30];
  int contador = 0;
  for (int e in edades) {
    if (e >= 18) contador++;
  }
  print("Hay $contador mayores de edad");
}

// ==========================================================
// BLOQUE 4 – RETOS COMBINADOS
// ==========================================================

// 1. Leer 5 números, guardarlos y sumar
void leerYSumar() {
  List<int> numeros = [];
  int suma = 0;
  for (int i = 1; i <= 5; i++) {
    stdout.write("Introduce número $i: ");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
    suma += num;
  }
  print("Lista: $numeros");
  print("Suma total = $suma");
}

// 2. Tabla de multiplicar solo de pares
void tablaPares() {
  stdout.write("Introduce un número: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) print("$n x $i = ${n * i}");
  }
}

// 3. Nombres que contienen la letra “e”
void nombresConE() {
  List<String> nombres = ["Elena", "Ana", "Pedro", "Carlos"];
  int contador = 0;
  for (String n in nombres) {
    if (n.toLowerCase().contains("e")) contador++;
  }
  print("Hay $contador nombres con la letra 'e'");
}

// 4. Mostrar letras de una palabra
void letrasPorLinea() {
  stdout.write("Introduce una palabra: ");
  String palabra = stdin.readLineSync()!;
  for (String letra in palabra.split("")) {
    print(letra);
  }
}

// 5. Suma de impares hasta n
void sumaImpares() {
  stdout.write("Introduce un número: ");
  int n = int.parse(stdin.readLineSync()!);
  int suma = 0;
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) suma += i;
  }
  print("Suma de impares = $suma");
}

// 6. Promedio de notas y resultado
void promedioNotas() {
  List<double> notas = [6.5, 7.0, 8.5, 5.0, 4.5];
  double suma = 0;
  for (double nota in notas) suma += nota;
  double media = suma / notas.length;
  print("Promedio = $media");
  if (media >= 5) {
    print("Aprobado");
  } else {
    print("Suspenso");
  }
}

// 7. Contar pares e impares
void paresImpares() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int pares = 0, impares = 0;
  for (int n in numeros) {
    if (n % 2 == 0) {
      pares++;
    } else {
      impares++;
    }
  }
  print("Pares: $pares, Impares: $impares");
}

// 8. Contar vocales en frase
void contarVocales() {
  stdout.write("Introduce una frase: ");
  String frase = stdin.readLineSync()!.toLowerCase();
  int contador = 0;
  for (String c in frase.split("")) {
    if ("aeiou".contains(c)) contador++;
  }
  print("La frase tiene $contador vocales");
}

// 9. Total con IVA
void totalConIVA() {
  List<double> precios = [10.0, 20.0, 30.0];
  double total = 0;
  for (double p in precios) {
    total += p * 1.21;
  }
  print("Total con IVA = ${total.toStringAsFixed(2)}");
}

// 10. Mayor de tres números
void mayorDeTres() {
  stdout.write("Introduce primer número: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Introduce segundo número: ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("Introduce tercer número: ");
  int c = int.parse(stdin.readLineSync()!);

  if (a >= b && a >= c) {
    print("El mayor es $a");
  } else if (b >= a && b >= c) {
    print("El mayor es $b");
  } else {
    print("El mayor es $c");
  }
}

// ==========================================================
// MAIN PARA PRUEBAS
// ==========================================================

void main() {
  // Descomenta la función que quieras probar
  // positivoNegativo();
  // parOImpar();
  // mayorDeEdad();
  // entre10y50();
  // validarClave();
  // compararNumeros();
  // notaAlumno();
  // vocalConsonante();
  // multiplo3y5();
  // compararCon100();
  //
  // unoADiez();
  // paresHasta20();
  // tablaMultiplicar();
  // sumaCien();
  // multiplos3();
  // divisiblesPor7();
  // factorial();
  // descendente();
  // cuentaAtras();
  // sumaPares();
  //
  // imprimirNombres();
  // mayoresDe10();
  // sumarLista();
  // buscarSiete();
  // nombresConA();
  // notasAprobadas();
  // nombresLargos();
  // totalPrecios();
  // listaMayusculas();
  // mayoresEdad();
  //
  // leerYSumar();
  // tablaPares();
  // nombresConE();
  // letrasPorLinea();
  // sumaImpares();
  // promedioNotas();
  // paresImpares();
  // contarVocales();
  // totalConIVA();
  // mayorDeTres();
}
