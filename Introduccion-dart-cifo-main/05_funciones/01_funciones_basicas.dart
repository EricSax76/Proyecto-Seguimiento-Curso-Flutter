import '02_otro_archivo.dart';

void main() {
  int resultado = sumar();
  String mensaje = saludar();

  print(mensaje);

  print(resultado);

  saludaSinRetorno();

  mensaje = "Nuevo Mensaje";

  print(mensaje);

  int resultado2 = sumarConArgumento(null, 20);

  print(resultado2);

  int resultado3 = sumarConNombre(numero3: null, numero1: 10);

  print(resultado3);

  saludarEtiqueta('Hola mundo');
}
