class Propiedades {
  bool encendido = false;

  void encender() {
    encendido = true;
    print("Vehiculo encendido");
  }

  void apagar() {
    encendido = false;
    print("Vehículo apagado");
  }
}

class Coche extends Propiedades {
  int kilometraje = 140000;
}

class Moto extends Propiedades {
  int ruedas = 2;
}

void main() {
  // final misPropiedades = Propiedades();

  // print(misPropiedades.encendido);

  // misPropiedades.encender();

  // print(misPropiedades.encendido);

  // misPropiedades.apagar();

  // print(misPropiedades.encendido);

  // misPropiedades.kilometraje;

  final tesla = Coche();

  print(tesla.encendido);

  tesla.apagar();

  print(tesla.encendido);

  tesla.encender();

  print(tesla.kilometraje);

  final moto = Moto();

  moto.encender();

  moto.apagar();

  moto.ruedas = 20;

  print(moto.ruedas);
}
