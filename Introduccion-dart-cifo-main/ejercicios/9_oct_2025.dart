// ==========================================================
// Ejercicios 9-Oct-2025
// El Lenguaje de Programación Dart
// Funciones y retos combinados
// ==========================================================

import 'dart:io';
import 'dart:math';

// ==========================================================
// FUNCIONES BÁSICAS
// ==========================================================

// 1. Función que imprime un saludo fijo
void saludar() {
  print("Hola, bienvenido a Dart");
}

// 2. Función que recibe dos números y devuelve su suma
int sumar(int a, int b) {
  return a + b;
}

// 3. Función que indica si un número es par o impar
String parOImpar(int numero) {
  if (numero % 2 == 0) {
    return "par";
  } else {
    return "impar";
  }
}

// 4. Función que calcula el área de un rectángulo
double areaRectangulo(double base, double altura) {
  return base * altura;
}

// 5. Función que devuelve la media de una lista de notas
double mediaNotas(List<double> notas) {
  double suma = 0;
  for (double nota in notas) {
    suma += nota;
  }
  return suma / notas.length;
}

// 6. Función que cuenta cuántos nombres empiezan por "A"
int nombresConA(List<String> nombres) {
  int contador = 0;
  for (String nombre in nombres) {
    if (nombre.startsWith("A")) {
      contador++;
    }
  }
  return contador;
}

// 7. Función que calcula el factorial de un número
int factorial(int n) {
  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

// 8. Función que cuenta cuántas vocales hay en una palabra
int contarVocales(String palabra) {
  int contador = 0;
  String minuscula = palabra.toLowerCase();
  for (String letra in minuscula.split("")) {
    if ("aeiou".contains(letra)) {
      contador++;
    }
  }
  return contador;
}

// 9. Funciones de conversión entre Celsius y Fahrenheit
double celsiusAFahrenheit(double c) {
  return (c * 9 / 5) + 32;
}

double fahrenheitACelsius(double f) {
  return (f - 32) * 5 / 9;
}

// 10. Función que indica si un número es divisible por otro
void divisiblePor(int a, int b) {
  if (b == 0) {
    print("No se puede dividir entre cero.");
  } else if (a % b == 0) {
    print("$a es divisible por $b");
  } else {
    print("$a no es divisible por $b");
  }
}

// ==========================================================
// BLOQUE 4 – RETOS COMBINADOS
// ==========================================================

// 1. Total con IVA del 21%
double totalConIVA(List<double> precios) {
  double total = 0;
  for (double precio in precios) {
    total += precio * 1.21;
  }
  return total;
}

// 2. Cuenta cuántas veces aparece una letra en un texto
int contarLetra(String texto, String letra) {
  int contador = 0;
  for (String caracter in texto.toLowerCase().split("")) {
    if (caracter == letra.toLowerCase()) {
      contador++;
    }
  }
  return contador;
}

// 3. Devuelve el mayor de tres números
int mayorDeTres(int a, int b, int c) {
  int mayor = a;
  if (b > mayor) mayor = b;
  if (c > mayor) mayor = c;
  return mayor;
}

// 4. Calcula el IMC y devuelve el rango
String calcularIMC(double peso, double altura) {
  double imc = peso / pow(altura, 2);
  if (imc < 18.5) return "Bajo peso";
  if (imc < 25) return "Peso normal";
  if (imc < 30) return "Sobrepeso";
  return "Obesidad";
}

// 5. Devuelve una lista con los números pares
List<int> filtrarPares(List<int> numeros) {
  List<int> pares = [];
  for (int n in numeros) {
    if (n % 2 == 0) {
      pares.add(n);
    }
  }
  return pares;
}

// 6. Devuelve el string más largo de una lista
String masLarga(List<String> palabras) {
  String mayor = palabras[0];
  for (String palabra in palabras) {
    if (palabra.length > mayor.length) {
      mayor = palabra;
    }
  }
  return mayor;
}

// 7. Devuelve un saludo personalizado
String saludoPersonalizado(String nombre) {
  return "Hola, $nombre!";
}

// 8. Suma todos los enteros hasta un número
int sumaHasta(int n) {
  int suma = 0;
  for (int i = 1; i <= n; i++) {
    suma += i;
  }
  return suma;
}

// 9. Verifica si una palabra es palíndromo
bool esPalindromo(String palabra) {
  String limpio = palabra.toLowerCase().replaceAll(" ", "");
  String invertido = limpio.split('').reversed.join('');
  return limpio == invertido;
}

// 10. Programa principal con menú para ejecutar funciones
void menu() {
  print("=== MENÚ DE FUNCIONES ===");
  print("1. Calcular área de rectángulo");
  print("2. Media de notas");
  print("3. Contar vocales en palabra");
  print("4. Factorial de un número");
  print("5. Verificar palíndromo");
  stdout.write("Elige una opción (1–5): ");
  String? opcion = stdin.readLineSync();

  if (opcion == "1") {
    stdout.write("Base: ");
    double base = double.parse(stdin.readLineSync()!);
    stdout.write("Altura: ");
    double altura = double.parse(stdin.readLineSync()!);
    print("Área = ${areaRectangulo(base, altura)}");
  } else if (opcion == "2") {
    List<double> notas = [8.5, 7.2, 9.0, 6.8];
    print("Media = ${mediaNotas(notas)}");
  } else if (opcion == "3") {
    stdout.write("Palabra: ");
    String palabra = stdin.readLineSync()!;
    print("Vocales: ${contarVocales(palabra)}");
  } else if (opcion == "4") {
    stdout.write("Número: ");
    int numero = int.parse(stdin.readLineSync()!);
    print("Factorial: ${factorial(numero)}");
  } else if (opcion == "5") {
    stdout.write("Palabra: ");
    String palabra = stdin.readLineSync()!;
    print(esPalindromo(palabra) ? "Es palíndromo" : "No es palíndromo");
  } else {
    print("Opción no válida");
  }
}

// ==========================================================
// MAIN PRINCIPAL PARA PRUEBAS
// ==========================================================

void main() {
  // Llamadas de ejemplo
  saludar();
  print(sumar(3, 5));
  print(parOImpar(4));
  print(areaRectangulo(5, 10));
  print(mediaNotas([7.5, 8.0, 9.0]));
  print(nombresConA(["Ana", "Luis", "Alberto", "María"]));
  print(factorial(5));
  print(contarVocales("Programacion"));
  print(celsiusAFahrenheit(25));
  divisiblePor(10, 2);

  print(totalConIVA([10.0, 20.0, 30.0]));
  print(contarLetra("banana", "a"));
  print(mayorDeTres(5, 10, 3));
  print(calcularIMC(70, 1.75));
  print(filtrarPares([1, 2, 3, 4, 5, 6]));
  print(masLarga(["uno", "tres", "cuatro", "doce"]));
  print(saludoPersonalizado("José"));
  print(sumaHasta(10));
  print(esPalindromo("Anita lava la tina"));

  // Activar menú de opciones
  // menu();
}
