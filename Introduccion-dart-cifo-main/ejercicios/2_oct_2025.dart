// ==========================================================
// Ejercicios 2-Oct-2025
// Variables y tipos básicos: int, double, String, bool
// ==========================================================

import 'dart:io';
import 'dart:math';

void main() {
  // ==========================================================
  // SECCIÓN 1: Enteros (int)
  // ==========================================================

  // 1. Edad
  int edad = 25;
  print("Mi edad es $edad");

  // 2. Doble de un número
  int numero = 6;
  print("El doble de $numero es ${numero * 2}");

  // 3. Cuadrado
  int n = 4;
  print("El cuadrado de $n es ${n * n}");

  // 4. Operaciones básicas
  int a = 12, b = 5;
  print("Suma: ${a + b}");
  print("Resta: ${a - b}");
  print("Multiplicación: ${a * b}");
  print("División entera: ${a ~/ b}");

  // 5. Resto de 25 entre 4
  print("Resto de 25 entre 4: ${25 % 4}");

  // 6. Días a horas
  int dias = 3;
  print("$dias días son ${dias * 24} horas");

  // 7. Docenas de huevos
  int huevos = 38;
  print("En 38 huevos hay ${huevos ~/ 12} docenas y ${huevos % 12} sueltos");

  // 8. Segundos a minutos y segundos
  int segundos = 125;
  print(
    "$segundos segundos = ${segundos ~/ 60} minutos y ${segundos % 60} segundos",
  );

  // 9. Par o impar
  int valor = 9;
  if (valor % 2 == 0) {
    print("$valor es par");
  } else {
    print("$valor es impar");
  }

  // 10. Tabla de multiplicar
  int tabla = 5;
  for (int i = 1; i <= 10; i++) {
    print("$tabla x $i = ${tabla * i}");
  }

  // ==========================================================
  // SECCIÓN 2: Decimales (double)
  // ==========================================================

  // 1. Peso
  double peso = 72.5;
  print("Mi peso es $peso kg");

  // 2. Área de un círculo
  double radio = 3.0;
  double area = pi * radio * radio;
  print("Área del círculo: $area");

  // 3. Precio con IVA
  double precio = 100;
  double iva = 21;
  double precioFinal = precio + (precio * iva / 100);
  print("Precio final con IVA: $precioFinal €");

  // 4. Celsius a Fahrenheit
  double celsius = 25;
  double fahrenheit = (celsius * 9 / 5) + 32;
  print("$celsius°C = $fahrenheit°F");

  // 5. Media de tres notas
  double nota1 = 8.5, nota2 = 7.0, nota3 = 9.0;
  double media = (nota1 + nota2 + nota3) / 3;
  print("Media: ${media.toStringAsFixed(2)}");

  // 6. Truncar a 2 decimales sin redondear
  double valorTruncar = 3.14159;
  double truncado = (valorTruncar * 100).truncateToDouble() / 100;
  print("Truncado a 2 decimales: $truncado");

  // 7. Redondear a la unidad más cercana
  double numeroDecimal = 4.7;
  print("Redondeado: ${numeroDecimal.round()}");

  // 8. Km a millas
  double km = 10;
  double millas = km * 0.621371;
  print("$km km = ${millas.toStringAsFixed(2)} millas");

  // 9. IMC
  double altura = 1.75;
  double imc = peso / (altura * altura);
  print("IMC = ${imc.toStringAsFixed(2)}");

  // 10. Cuenta de restaurante
  double cuenta = 80.0;
  int personas = 4;
  print("Cada persona paga: ${cuenta / personas} €");

  // ==========================================================
  // SECCIÓN 3: Cadenas (String)
  // ==========================================================

  // 1. Saludo
  String nombre = "Ana";
  print("Hola, $nombre!");

  // 2. Longitud
  print("El nombre tiene ${nombre.length} letras");

  // 3. Mayúsculas y minúsculas
  print(nombre.toUpperCase());
  print(nombre.toLowerCase());

  // 4. Nombre + apellido
  String apellido = "Pérez";
  print("Nombre completo: $nombre $apellido");

  // 5. Primera letra
  print("Primera letra: ${nombre.substring(0, 1)}");

  // 6. Contiene “Dart”
  String frase = "Estoy aprendiendo Dart";
  if (frase.contains("Dart")) {
    print("La frase contiene 'Dart'");
  }

  // 7. Reemplazar “malo” por “bueno”
  String oracion = "El día está malo";
  print(oracion.replaceAll("malo", "bueno"));

  // 8. Invertir cadena
  String texto = "Hola";
  print("Invertido: ${texto.split('').reversed.join()}");

  // 9. Contar 'a'
  String palabra = "banana";
  int contador = 0;
  for (String letra in palabra.split('')) {
    if (letra == 'a') contador++;
  }
  print("La palabra '$palabra' tiene $contador letras 'a'");

  // 10. Saludo personalizado
  print("Hola, $nombre! Bienvenido a Dart");

  // ==========================================================
  // SECCIÓN 4: Booleanos (bool)
  // ==========================================================

  // 1. Tengo mascota
  bool tengoMascota = true;
  print("¿Tienes mascota? $tengoMascota");

  // 2. Mayor que 100
  int x = 120;
  print(x > 100);

  // 3. Positivo o negativo
  int z = -8;
  if (z >= 0) {
    print("Positivo");
  } else {
    print("Negativo");
  }

  // 4. Operadores lógicos
  bool a1 = true, b1 = false;
  print("a && b = ${a1 && b1}");
  print("a || b = ${a1 || b1}");
  print("!a = ${!a1}");

  // 5. Mayor de edad
  int edad2 = 20;
  print(edad2 >= 18);

  // 6. Divisible por 5 y 2
  int numeroCheck = 20;
  print(numeroCheck % 5 == 0 && numeroCheck % 2 == 0);

  // 7. Contraseña correcta
  String clave = "1234";
  print(clave == "1234" ? "Acceso permitido" : "Acceso denegado");

  // 8. Año bisiesto
  int year = 2024;
  bool bisiesto = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  print("¿$año es bisiesto? $bisiesto");

  // 9. Aprobado
  bool aprobado = true;
  if (aprobado) {
    print("Has aprobado");
  } else {
    print("Has suspendido");
  }

  // 10. Empieza con vocal
  String palabra2 = "Oruga";
  String primera = palabra2.substring(0, 1).toLowerCase();
  if ("aeiou".contains(primera)) {
    print("La palabra empieza con vocal");
  } else {
    print("No empieza con vocal");
  }

  // ==========================================================
  // SECCIÓN 5: Ejercicios combinados
  // ==========================================================

  // 1. Nombre y edad
  String alumno = "Carlos";
  int edadAlumno = 19;
  print("Hola $alumno, el año que viene tendrás ${edadAlumno + 1} años.");

  // 2. Promedio de 3 notas
  double n1 = 5.0, n2 = 6.5, n3 = 4.5;
  double promedio = (n1 + n2 + n3) / 3;
  print("Promedio: $promedio");
  print(promedio >= 5 ? "Aprobado" : "Suspendido");

  // 3. Par y mayor que 10
  int num3 = 14;
  if (num3 % 2 == 0 && num3 > 10) {
    print("$num3 es par y mayor que 10");
  }

  // 4. IMC con nombre
  String persona = "Lucía";
  double peso2 = 60;
  double altura2 = 1.68;
  double imc2 = peso2 / pow(altura2, 2);
  print("Nombre: $persona");
  print("IMC: ${imc2.toStringAsFixed(2)}");
  print(imc2 >= 18.5 && imc2 <= 24.9);

  // 5. Cuadrado, raíz, múltiplo de 3
  int num4 = 9;
  print("Cuadrado: ${num4 * num4}");
  print("Raíz cuadrada: ${sqrt(num4)}");
  print("¿Múltiplo de 3? ${num4 % 3 == 0}");

  // 6. Lista de nombres
  List<String> lista = ["Ana", "Luis", "Pedro"];
  print(lista.contains("Ana") ? "Contiene Ana" : "No contiene Ana");

  // 7. Calculadora básica
  double numA = 10, numB = 2;
  String operador = "/";
  if (operador == "+")
    print(numA + numB);
  else if (operador == "-")
    print(numA - numB);
  else if (operador == "*")
    print(numA * numB);
  else if (operador == "/")
    print(numA / numB);

  // 8. Euros a dólares
  double euros = 50;
  double tasa = 1.1;
  print("$euros euros = ${euros * tasa} dólares");

  // 9. Caracteres y mayúscula inicial
  String texto2 = "Hola mundo";
  print("Tiene ${texto2.length} caracteres");
  print(
    texto2[0] == texto2[0].toUpperCase()
        ? "Empieza con mayúscula"
        : "No empieza con mayúscula",
  );

  // 10. Truncado y redondeado
  double numDecimal = 7.56;
  print("Truncado: ${numDecimal.truncate()}");
  print("Redondeado: ${numDecimal.round()}");
}
