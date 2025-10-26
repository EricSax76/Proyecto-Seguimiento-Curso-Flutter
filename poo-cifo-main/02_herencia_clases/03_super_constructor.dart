class Persona {
  String nombre;
  int edad;
  Persona({required this.nombre, required this.edad});

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String direccion = '';
  List odenes = [];

  // Cliente(super.nombre, super.edad);
  Cliente({required int edadActual, required String nombreActual})
    : super(nombre: nombreActual, edad: edadActual);
}

void main() {
  final marcos = Cliente(edadActual: 23, nombreActual: "Pedro");

  marcos.imprimirNombre();
}
