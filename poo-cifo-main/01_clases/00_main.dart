import '01_clase.dart';

void main(List<String> args) {
  final Persona persona1 = new Persona();
  Persona persona2 = Persona.persona30();

  print(persona1.bio);

  print(persona2.nombre);
  persona2.bio = "cambio de valor";

  print(persona1.bio);
}
