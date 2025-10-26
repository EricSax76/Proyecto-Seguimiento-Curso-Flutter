import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import 'package:api_rest_cifo/src/data/services/api_rest_service.dart';
import 'package:api_rest_cifo/src/config/reqres_urls.dart';

void main() {
  test('fetchPeople returns a parsed list of personas', () async {
    final mockClient = MockClient((request) async {
      expect(request.url.toString(), ReqResUrl.urlStringListPersonasTest);
      return http.Response(
        jsonEncode({
          'data': [
            {
              'id': 7,
              'email': 'grace@example.com',
              'first_name': 'Grace',
              'last_name': 'Hopper',
              'avatar': '',
            },
          ],
        }),
        200,
      );
    });

    final service = ApiRestService(httpClient: mockClient);
    final people = await service.fetchPeople();

    expect(people, hasLength(1));
    expect(people.first.firstName, 'Grace');
    service.dispose();
  });

  test('fetchCountry returns null when API responds with an empty body', () async {
    final mockClient = MockClient((request) async {
      expect(request.url.toString(), ReqResUrl.urlGetCountry('Nowhere'));
      return http.Response(jsonEncode([]), 200);
    });

    final service = ApiRestService(httpClient: mockClient);
    final country = await service.fetchCountry('Nowhere');

    expect(country, isNull);
    service.dispose();
  });
}
