class Location {
  final double lat;
  final double lng;

  const Location(
    this.lat,
    this.lng,
  ); //Los constractores constantes se inicializan en el mismo lugar de memoria
}

main() {
  final sanFrancisco = new Location(10.23434, 400000);
  final sanFrancisco1 = new Location(10.23434, 400001);
  final sanFrancisco2 = new Location(10.23434, 400001);

  print(sanFrancisco == sanFrancisco1); // False
  print(sanFrancisco1 == sanFrancisco2); // False

  const sanFrancisco4 = const Location(10.23434, 400000);
  const sanFrancisco5 = const Location(10.23434, 400001);
  const sanFrancisco6 = const Location(10.23434, 400001);

  print(sanFrancisco4 == sanFrancisco5);
  print(sanFrancisco5 == sanFrancisco6);
}
