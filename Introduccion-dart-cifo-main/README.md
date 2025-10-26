# 📘 MÓDULO: El Lenguaje de Programación Dart

## 🎯 Objetivos generales del módulo

- Comprender la sintaxis y los tipos de datos básicos del lenguaje Dart.  
- Aplicar estructuras de control (`if`, `for`, `for-in`, `switch`) para la toma de decisiones y repetición de tareas.  
- Diseñar y utilizar funciones para modularizar el código y mejorar la reutilización.  
- Introducir conceptos de asincronía (`async`, `await`) y manejo de errores (`try` / `catch`).  

---

## 🔹 UNIDAD 1 – Variables y Tipos de Datos

### Introducción al lenguaje Dart

- Qué es Dart y para qué se utiliza (CLI, Web, Flutter).  
- Estructura de un programa Dart: `main()` como punto de entrada.  
- Comentarios, sangrías y estilo de código.  

### Tipos de datos primitivos

- `int`, `double`, `String`, `bool`, `var`, `dynamic`.  
- Literales, interpolación de cadenas y concatenación.  
- Conversión de tipos (`toString()`, `int.parse()`, `double.parse()`).  

### Variables y constantes

- Declaración, inicialización y mutabilidad (`final`, `const`).  
- Alcance (scope): global, local y sombreado de variables.  

### Operadores básicos

- Aritméticos, lógicos, relacionales y de asignación.  
- Precedencia de operadores.  
- Ejercicios de evaluación de expresiones.  

### Colecciones básicas

- `List`, `Set` y `Map`: creación, acceso y modificación.  
- Métodos comunes (`add`, `remove`, `contains`, `.length`, `.keys`, `.values`).  
- Ejercicios combinados con listas y conjuntos.  

**Ejercicios tipo:**

- Cálculo de áreas y conversiones de unidades.  
- Promedio de notas con condicionales.  
- Gestión simple de listas (nombres, precios, edades).  

---

## 🔸 UNIDAD 2 – Control de Flujo

### Estructuras condicionales

- `if`, `else if`, `else`.  
- Condiciones anidadas y operadores lógicos (`&&`, `||`, `!`).  
- Ejemplo: Evaluación de notas, verificación de contraseñas.  

### Estructuras iterativas

- `for` tradicional y `for-in`.  
- Bucles descendentes y saltos (`break`, `continue`).  
- Iteración sobre listas y conjuntos.  
- Ejemplo: tablas de multiplicar, contadores, sumas acumulativas.  

### Estructura `switch`

- Uso y sintaxis.  
- Diferencias con `if / else`.  
- Casos de uso prácticos (menús, selección de opciones).  

### Entrada y salida de datos

- `stdin.readLineSync()` y `print()`.  
- Limitaciones del entorno de depuración en VSCode (stdin no interactivo).  
- Ejecución desde la terminal (`dart archivo.dart`).  

### Manejo de errores (`try` / `catch`)

- Introducción a excepciones y errores comunes.  
- Bloques `try` y `catch` simples.  
- Validación de entrada numérica y divisiones por cero.  

---

## 🔹 UNIDAD 3 – Funciones

### Concepto y sintaxis de funciones

- Definición, llamada y retorno (`return`).  
- Parámetros posicionales y valor de retorno.  
- Ejemplo: funciones para operaciones matemáticas.  

### Tipos de argumentos

- Posicionales, nombrados y opcionales.  
- Argumentos con valores por defecto.  
- Ejemplo: funciones con parámetros flexibles (greeting, operaciones).  

### Alcance de variables

- Variables locales y globales dentro de funciones.  
- Sombras de nombres (variable local oculta global).  
- Ejemplo: diferencia entre variables dentro y fuera de una función.  

### Funciones asíncronas (`async` / `await`)

- Concepto de `Future` y asincronía.  
- `await` para esperar resultados.  
- Simulación de procesos lentos con `Future.delayed()`.  
- Ejemplo: descarga de datos o validación de usuario con retardo.  

### Reutilización y modularidad

- Funciones puras e impuras.  
- Paso de funciones como argumento.  
- Organización del código en múltiples archivos.  

---

**📈 Distribución sugerida del módulo (total ~15 horas)**  

| Unidad | Tema | Duración estimada |
|--------|------|-------------------|
| 1 | Variables y tipos de datos | 4–5 h |
| 2 | Control de flujo | 5–6 h |
| 3 | Funciones | 5–6 h |
| **Total** | — | **15–17 horas aprox.** |

---

**🧠 Ejercicio integrador final**

Crea un programa que pida los datos de varios alumnos (nombre, edad, nota) y muestre:

- Promedio de notas.  
- Alumnos aprobados.  
- El alumno con la nota más alta.  
- Todo implementado mediante funciones con parámetros y listas.  
