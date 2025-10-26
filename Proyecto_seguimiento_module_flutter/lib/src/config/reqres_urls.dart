import 'package:api_rest_cifo/src/config/api_keys.dart';

class ReqResUrl {
  static const String _reqResBaseUrl = "https://reqres.in/api";
  static const String _countriesBaseUrl = "https://restcountries.com/v3.1";

  static String urlStringGetSingleUserTest(int id) =>
      "$_reqResBaseUrl/users/$id";

  static String urlStringGetSingleUserProd(int id) =>
      "$_reqResBaseUrl/users/$id";

  static String urlStringListPersonasTest = "$_reqResBaseUrl/users";

  static Map<String, String> headers = {
    //Si la api requiere de autenticación
    'x-api-key': ApiKeys.apiKey,
  };

  static String urlStringResource = "$_reqResBaseUrl/unknown";

  static Map<String, String> errorControl = {'404': 'Error Fatal'};

  // static String myToken = MyToken.token();

  static String urlGetCountry(String nombre) =>
      "$_countriesBaseUrl/name/$nombre";
}
