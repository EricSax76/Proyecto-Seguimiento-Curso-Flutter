// ==========================================================
// Ejercicios 10-Oct-2025
// El Lenguaje de Programación Dart
// Funciones, parámetros, async/await, y manejo de errores
// ==========================================================

import 'dart:io';
import 'dart:math';

// ==========================================================
// FUNCIONES BÁSICAS Y CON RETORNO
// ==========================================================

// 1. Función que imprime “Hola, mundo”
void holaMundo() {
  print("Hola, mundo");
}

// 2. Función que recibe un nombre y muestra un saludo
void saludar(String nombre) {
  print("Hola, $nombre!");
}

// 3. Función que recibe dos números y devuelve su suma
int sumar(int a, int b) {
  return a + b;
}

// 4. Función que recibe tres notas y devuelve su promedio
double promedio(double a, double b, double c) {
  return (a + b + c) / 3;
}

// 5. Función que devuelve true si un número es par
bool esPar(int numero) {
  return numero % 2 == 0;
}

// 6. Función que devuelve la cantidad de caracteres de un texto
int contarCaracteres(String texto) {
  return texto.length;
}

// 7. Función que calcula el factorial de un número
int factorial(int n) {
  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

// 8. Función que devuelve el mayor de dos números
int mayor(int a, int b) {
  return (a > b) ? a : b;
}

// 9. Función que suma todos los precios de una lista
double totalPrecios(List<double> precios) {
  double total = 0;
  for (double precio in precios) {
    total += precio;
  }
  return total;
}

// 10. Función que devuelve un texto en mayúsculas
String aMayusculas(String texto) {
  return texto.toUpperCase();
}

// ==========================================================
// TIPOS DE ARGUMENTOS
// ==========================================================

// 1. Parámetro opcional
void saludoOpcional([String nombre = "invitado"]) {
  print("Hola, $nombre!");
}

// 2. Parámetros nombrados
void mostrarDatos({required String nombre, required int edad}) {
  print("Nombre: $nombre, Edad: $edad");
}

// 3. Parámetro opcional con comprobación de null
void mensajeOpcional([String? mensaje]) {
  if (mensaje == null) {
    print("Error: no se ha pasado ningún mensaje");
  } else {
    print(mensaje);
  }
}

// 4. Parámetro con valor por defecto
void mostrarPersona(String nombre, int edad, {String pais = "España"}) {
  print("$nombre tiene $edad años y es de $pais.");
}

// 5. Devuelve true si la lista contiene el número
bool contieneNumero(List<int> lista, int numero) {
  return lista.contains(numero);
}

// 6. Repetición de texto
void repetirTexto(String texto, [int repeticiones = 1]) {
  for (int i = 0; i < repeticiones; i++) {
    print(texto);
  }
}

// 7. Media con argumentos opcionales
double mediaOpcional(int a, [int? b, int? c]) {
  int total = a + (b ?? 0) + (c ?? 0);
  int cantidad = 1 + ((b != null) ? 1 : 0) + ((c != null) ? 1 : 0);
  return total / cantidad;
}

// 8. Devolver un elemento de una lista según índice
dynamic obtenerElemento(List lista, int indice) {
  if (indice < 0 || indice >= lista.length) {
    print("Índice fuera de rango");
    return null;
  }
  return lista[indice];
}

// 9. Parámetros nombrados que devuelven un mensaje combinado
String infoUsuario({
  required String nombre,
  required int edad,
  bool activo = true,
}) {
  return "Usuario: $nombre, Edad: $edad, Activo: $activo";
}

// 10. Parámetros posicionales y nombrados
void mostrar(String nombre, {int edad = 0}) {
  print("Nombre: $nombre, Edad: $edad");
}

// ==========================================================
// FUNCIONES ASYNC, AWAIT Y FUTURE
// ==========================================================

// 1. Devuelve un mensaje después de 2 segundos
Future<String> mensajeAsync() async {
  return await Future.delayed(Duration(seconds: 2), () => "Mensaje listo");
}

// 2. Simula descarga de datos
Future<void> descargarDatos() async {
  print("Descargando datos...");
  await Future.delayed(Duration(seconds: 2));
  print("Descarga completada.");
}

// 3. Devuelve el cuadrado de un número tras 1 segundo
Future<int> cuadradoAsync(int n) async {
  await Future.delayed(Duration(seconds: 1));
  return n * n;
}

// 4. Combina await con función sincrónica
Future<void> combinarFunciones() async {
  int resultado = await cuadradoAsync(4);
  print("El cuadrado es: $resultado");
}

// 5. Procesa una lista con pausas de 1 segundo
Future<void> procesarLista(List<String> items) async {
  for (String item in items) {
    print("Procesando: $item...");
    await Future.delayed(Duration(seconds: 1));
  }
  print("Procesamiento completo.");
}

// 6. Espera tres tareas secuencialmente
Future<void> tareasSecuenciales() async {
  print(await mensajeAsync());
  await descargarDatos();
  print(await cuadradoAsync(5));
}

// 7. Calcula el área de un círculo con pausa
Future<double> areaCirculoAsync(double radio) async {
  await Future.delayed(Duration(seconds: 1));
  return pi * radio * radio;
}

// 8. Simula validación de login
Future<String> login(String user, String pass) async {
  await Future.delayed(Duration(seconds: 2));
  if (user == "admin" && pass == "1234") {
    return "Acceso permitido";
  } else {
    return "Acceso denegado";
  }
}

// 9. Llama a otra async dentro de un bucle
Future<void> progresoDescarga() async {
  for (int i = 1; i <= 3; i++) {
    print("Descargando parte $i...");
    await Future.delayed(Duration(seconds: 1));
  }
  print("Descarga finalizada.");
}

// 10. main async que coordina tareas
Future<void> mainAsync() async {
  print("Inicio de tareas...");
  await tareasSecuenciales();
  await progresoDescarga();
  print("Todas las tareas completadas.");
}

// ==========================================================
// MANEJO DE ERRORES CON TRY Y CATCH
// ==========================================================

// 1. Captura división entre cero
void divisionSegura(int a, int b) {
  try {
    double resultado = a / b;
    print("Resultado: $resultado");
  } catch (e) {
    print("Error: $e");
  }
}

// 2. Función con manejo de error y retorno null
double? dividir(int a, int b) {
  try {
    return a / b;
  } catch (e) {
    print("No se puede dividir: $e");
    return null;
  }
}

// 3. Conversión de texto a número
void convertirTexto(String texto) {
  try {
    int numero = int.parse(texto);
    print("Número: $numero");
  } catch (e) {
    print("Error de formato: $e");
  }
}

// 4. Leer número desde teclado y manejar error
void leerNumero() {
  try {
    stdout.write("Introduce un número: ");
    int numero = int.parse(stdin.readLineSync()!);
    print("Has introducido: $numero");
  } catch (e) {
    print("Entrada inválida.");
  }
}

// 5. Acceso fuera de rango
void accesoLista() {
  List<int> lista = [1, 2, 3];
  try {
    print(lista[5]);
  } catch (e) {
    print("Error de índice: $e");
  }
}

// 6. Simula lectura de archivo
void leerArchivo() {
  try {
    throw Exception("Archivo no encontrado");
  } catch (e) {
    print("Error al leer archivo: $e");
  }
}

// 7. Raíz cuadrada con control de número negativo
double? raizSegura(double num) {
  try {
    if (num < 0) throw Exception("Número negativo");
    return sqrt(num);
  } catch (e) {
    print("Error: $e");
    return null;
  }
}

// 8. Future que falla y captura el error
Future<void> futureFallido() async {
  try {
    await Future.delayed(Duration(seconds: 1));
    throw Exception("Error simulado");
  } catch (e) {
    print("Error capturado: $e");
  }
}

// 9. Captura diferentes tipos de errores
void diferentesErrores() {
  try {
    int numero = int.parse("abc");
    print(numero ~/ 0);
  } on FormatException {
    print("Error de formato.");
  } catch (e) {
    print("Otro tipo de error: $e");
  }
}

// 10. try/catch con condiciones personalizadas
void condicionesErrores(String valor) {
  try {
    int numero = int.parse(valor);
    if (numero < 0) throw Exception("Número negativo no permitido");
    print("Número válido: $numero");
  } catch (e) {
    if (e.toString().contains("Formato")) {
      print("Error: valor no numérico.");
    } else {
      print("Error: $e");
    }
  }
}

// ==========================================================
// MAIN PRINCIPAL PARA PRUEBAS
// ==========================================================

void main() async {
  holaMundo();
  saludar("José");
  print(sumar(5, 7));
  print(promedio(7.5, 8.0, 6.5));
  print(esPar(10));
  print(contarCaracteres("Dart"));
  print(factorial(5));
  print(mayor(9, 3));
  print(totalPrecios([10.5, 3.2, 6.8]));
  print(aMayusculas("hola mundo"));

  saludoOpcional();
  mostrarDatos(nombre: "Ana", edad: 22);
  mensajeOpcional();
  mostrarPersona("Luis", 30, pais: "México");
  print(contieneNumero([1, 2, 3], 2));
  repetirTexto("Hola", 2);
  print(mediaOpcional(5, 7));
  print(obtenerElemento([10, 20, 30], 1));
  print(infoUsuario(nombre: "María", edad: 25));
  mostrar("Carlos", edad: 40);

  await mainAsync();

  divisionSegura(10, 0);
  dividir(10, 0);
  convertirTexto("abc");
  leerArchivo();
  raizSegura(-4);
  await futureFallido();
  diferentesErrores();
  condicionesErrores("-10");
}
