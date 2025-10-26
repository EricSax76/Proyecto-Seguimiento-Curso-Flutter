import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:api_rest_cifo/src/config/reqres_urls.dart';
import 'package:api_rest_cifo/src/data/models/country/country.dart';
import 'package:api_rest_cifo/src/data/models/reqres/persona.dart';
import 'package:api_rest_cifo/src/data/models/reqres/resource.dart';

class ApiRestService {
  ApiRestService({http.Client? httpClient}) : _http = httpClient ?? http.Client();

  final http.Client _http;

  Future<List<Persona>> fetchPeople() async {
    final uri = Uri.parse(ReqResUrl.urlStringListPersonasTest);
    final response = await _http.get(uri, headers: ReqResUrl.headers);
    _throwIfError(response);
    final body = jsonDecode(response.body) as Map<String, dynamic>;
    final data = (body['data'] as List<dynamic>? ?? [])
        .map((dynamic element) => Persona.fromJson(element as Map<String, dynamic>))
        .toList();
    return data;
  }

  Future<Persona> fetchPerson(int id) async {
    final uri = Uri.parse(ReqResUrl.urlStringGetSingleUserProd(id));
    final response = await _http.get(uri, headers: ReqResUrl.headers);
    _throwIfError(response);
    final body = jsonDecode(response.body) as Map<String, dynamic>;
    return Persona.fromJson(body['data'] as Map<String, dynamic>);
  }

  Future<List<Resource>> fetchResources() async {
    final uri = Uri.parse(ReqResUrl.urlStringResource);
    final response = await _http.get(uri, headers: ReqResUrl.headers);
    _throwIfError(response);
    final body = jsonDecode(response.body) as Map<String, dynamic>;
    final data = (body['data'] as List<dynamic>? ?? [])
        .map((dynamic element) => Resource.fromJson(element as Map<String, dynamic>))
        .toList();
    return data;
  }

  Future<Country?> fetchCountry(String name) async {
    final uri = Uri.parse(ReqResUrl.urlGetCountry(name));
    final response = await _http.get(uri);
    _throwIfError(response);
    final body = jsonDecode(response.body) as List<dynamic>;
    if (body.isEmpty) {
      return null;
    }
    return Country.fromJson(body.first as Map<String, dynamic>);
  }

  void dispose() {
    _http.close();
  }

  void _throwIfError(http.Response response) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw ApiRestException(
        'Error ${response.statusCode}: ${response.reasonPhrase ?? 'Unexpected response'}',
      );
    }
  }
}

class ApiRestException implements Exception {
  ApiRestException(this.message);

  final String message;

  @override
  String toString() => 'ApiRestException($message)';
}
