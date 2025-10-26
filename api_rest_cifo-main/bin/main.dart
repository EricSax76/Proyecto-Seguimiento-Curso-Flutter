import 'package:api_rest_cifo/api_rest_cifo.dart';
import 'package:api_rest_cifo/classes/ejercicio_paises/country.dart';
import 'package:api_rest_cifo/classes/ejercicio_reqres/persona.dart';
import 'package:api_rest_cifo/classes/ejercicio_reqres/resource.dart';

void main(List<String> args) async {
  //getReqRespService();
  //getSingleUser(2);

  // Persona? myPersona = await getSingleUserObjetct(2);

  // print(myPersona?.email ?? '');

  //List<Persona> personas = await getListPersonasObject();
  // List<Resource> resources = await getListResourcesObject();
  // print(resources.length);

  Country? myCountry = await getListCountriesObjetc("Peru");

  print(myCountry?.area ?? 0);
}
