abstract class Vehiculo {
  bool encendido = false;
  void encender() {
    encendido = true;
    print("Vehiculo encendido");
  }

  void apagar() {
    encendido = false;
    print("Vehiculo apagado");
  }

  bool revisarMotor();
}

class Coche extends Vehiculo {
  int kilometraje = 15000;

  @override
  bool revisarMotor() {
    return true;
  }
}

class Tesla extends Coche {
  String model = "Model X";
}

void main() {
  // final coche = Vehiculo();
  final tesla1 = Tesla();

  print(tesla1.model);
}
