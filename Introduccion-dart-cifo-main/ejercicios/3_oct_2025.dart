// ==========================================================
// Ejercicios 3-Oct-2025
// List, Set y Map en Dart
// ==========================================================

void main() {
  // ==========================================================
  // EJERCICIOS CON LIST
  // ==========================================================

  // 1. Crea una lista con tres colores e imprímela.
  List<String> colores = ["Rojo", "Verde", "Azul"];
  print(colores);

  // 2. Accede al primer elemento de la lista e imprímelo.
  print("Primer color: ${colores.first}");

  // 3. Accede al último elemento de la lista e imprímelo.
  print("Último color: ${colores.last}");

  // 4. Modifica el segundo elemento de la lista y cámbialo por otro valor.
  colores[1] = "Amarillo";
  print("Lista modificada: $colores");

  // 5. Añade un nuevo elemento al final de la lista.
  colores.add("Negro");
  print("Lista después de añadir: $colores");

  // 6. Elimina el primer elemento de la lista.
  colores.removeAt(0);
  print("Lista después de eliminar el primero: $colores");

  // 7. Imprime el número de elementos que contiene la lista.
  print("Número de elementos: ${colores.length}");

  // 8. Comprueba con un if si la lista está vacía o no.
  if (colores.isEmpty) {
    print("La lista está vacía");
  } else {
    print("La lista NO está vacía");
  }

  // 9. Crea una lista de números y muestra el elemento en la posición 2.
  List<int> numeros = [10, 20, 30, 40];
  print("Elemento en posición 2: ${numeros[2]}");

  // 10. Declara una lista vacía y luego añade dos elementos.
  List<String> frutas = [];
  frutas.add("Manzana");
  frutas.add("Pera");
  print("Lista de frutas: $frutas");

  // ==========================================================
  // EJERCICIOS CON SET
  // ==========================================================

  // 1. Crea un Set con tres ciudades e imprímelo.
  Set<String> ciudades = {"Valencia", "Madrid", "Sevilla"};
  print(ciudades);

  // 2. Intenta añadir un valor repetido.
  ciudades.add("Madrid"); // No se añadirá, Set no admite duplicados.
  print("Después de intentar duplicado: $ciudades");

  // 3. Accede al tamaño del Set usando .length.
  print("Tamaño del Set: ${ciudades.length}");

  // 4. Comprueba si el Set contiene un valor específico.
  if (ciudades.contains("Sevilla")) {
    print("El Set contiene Sevilla");
  } else {
    print("El Set no contiene Sevilla");
  }

  // 5. Elimina un valor del Set.
  ciudades.remove("Valencia");
  print("Después de eliminar Valencia: $ciudades");

  // 6. Declara un Set vacío y añade dos elementos.
  Set<int> numerosSet = {};
  numerosSet.add(5);
  numerosSet.add(10);
  print("Set de números: $numerosSet");

  // 7. Añadir duplicado en un Set de números.
  numerosSet.add(10);
  print("Después de intentar añadir duplicado: $numerosSet");

  // 8. Comprueba si el Set está vacío.
  if (numerosSet.isEmpty) {
    print("Set vacío");
  } else {
    print("Set con elementos");
  }

  // 9. Crea un Set y elimina todos sus elementos.
  Set<String> animales = {"Perro", "Gato", "Pájaro"};
  animales.clear();
  print("Set después de clear(): $animales");

  // 10. Crea un Set y muestra el primero y el último.
  Set<String> paises = {"España", "Francia", "Italia", "Portugal"};
  print("Primer elemento: ${paises.first}");
  print("Último elemento: ${paises.last}");

  // ==========================================================
  // EJERCICIOS CON MAP (nivel básico)
  // ==========================================================

  // 1. Crea un Map con nombres y edades.
  Map<String, int> edades = {"Ana": 20, "Carlos": 25, "Marta": 30};
  print(edades);

  // 2. Accede al valor de una clave específica.
  print("Edad de Ana: ${edades["Ana"]}");

  // 3. Añade un nuevo par clave-valor.
  edades["Luis"] = 28;
  print("Después de añadir a Luis: $edades");

  // 4. Elimina una clave del Map.
  edades.remove("Carlos");
  print("Después de eliminar Carlos: $edades");

  // 5. Comprueba si una clave existe.
  if (edades.containsKey("Marta")) {
    print("La clave Marta existe");
  } else {
    print("No existe Marta");
  }

  // 6. Comprueba si un valor existe.
  if (edades.containsValue(28)) {
    print("Existe una persona con 28 años");
  } else {
    print("Nadie tiene 28 años");
  }

  // 7. Modifica el valor de una clave existente.
  edades["Ana"] = 21;
  print("Edad actualizada de Ana: ${edades["Ana"]}");

  // 8. Declara un Map vacío y añade dos elementos.
  Map<String, String> paisCapital = {};
  paisCapital["España"] = "Madrid";
  paisCapital["Francia"] = "París";
  print("Map de países: $paisCapital");

  // 9. Imprime el número total de elementos del Map.
  print("Número de elementos en Map: ${paisCapital.length}");

  // 10. Condición según la clave "password".
  Map<String, String> login = {"usuario": "admin", "password": "1234"};
  if (login.containsKey("password")) {
    print("Acceso restringido");
  } else {
    print("Acceso libre");
  }
}
