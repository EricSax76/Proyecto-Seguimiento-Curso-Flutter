class Persona {
  // Campos o propiedades
  late String nombre;
  late int edad;
  String _bio = "hola esta la biografia de mi persona";
  String _propiedadPrivada = "Hola, esto es una propiedad privada";

  //Constructores
  Persona({this.edad = 0, this.nombre = 'Jose'});

  Persona.persona30({this.nombre = 'Maria', this.edad = 30});

  //Get y sets

  String get bio => _bio.toUpperCase();

  set bio(String texto) {
    _bio = texto;
  }
}

void main(List<String> args) {
  Persona persona1 = Persona();

  persona1._propiedadPrivada;
}
