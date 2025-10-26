import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

import 'package:api_rest_cifo/main.dart';
import 'package:api_rest_cifo/src/data/models/country/country.dart';
import 'package:api_rest_cifo/src/data/models/reqres/persona.dart';
import 'package:api_rest_cifo/src/data/models/reqres/resource.dart';
import 'package:api_rest_cifo/src/data/services/api_rest_service.dart';

void main() {
  testWidgets('Dashboard renders the three sections with fake data', (tester) async {
    final fakeService = _FakeApiRestService();

    await tester.pumpWidget(
      MaterialApp(
        home: ApiDashboardPage(service: fakeService),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Usuarios de ReqRes'), findsOneWidget);
    expect(find.text('Recursos disponibles'), findsOneWidget);
    expect(find.text('País consultado'), findsOneWidget);
    expect(find.textContaining('Ada'), findsOneWidget);
  });
}

class _FakeApiRestService extends ApiRestService {
  _FakeApiRestService() : super(httpClient: http.Client());

  @override
  Future<List<Persona>> fetchPeople() async {
    return [
      Persona(
        id: 1,
        email: 'ada@example.com',
        firstName: 'Ada',
        lastName: 'Lovelace',
        avatar: '',
      ),
    ];
  }

  @override
  Future<List<Resource>> fetchResources() async {
    return [
      Resource(
        id: 99,
        name: 'Tonalidad Indigo',
        year: 2024,
        color: '#4B0082',
        pantoneValue: '18-3949',
      ),
    ];
  }

  @override
  Future<Country?> fetchCountry(String name) async {
    return Country.fromJson({
      "tld": [".pe"],
      "cca2": "PE",
      "cca3": "PER",
      "ccn3": "604",
      "cioc": "PER",
      "independent": true,
      "status": "officially-assigned",
      "unMember": true,
      "region": "Americas",
      "subregion": "South America",
      "capital": ["Lima"],
      "area": 1285216,
      "population": 33000000,
      "latlng": [-9.19, -75.02],
      "borders": ["BOL", "BRA", "CHL", "COL", "ECU"],
      "flag": "🇵🇪",
      "fifa": "PER",
      "landlocked": false,
      "timezones": ["UTC-05:00"],
      "continents": ["South America"],
    });
  }

  @override
  void dispose() {
    // Nothing to dispose in the fake implementation.
  }
}
