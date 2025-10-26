## Proyecto Seguimiento - Módulo 1

Aplicación Flutter que consume las APIs públicas de [ReqRes](https://reqres.in/) y [RestCountries](https://restcountries.com/) para mostrar usuarios, recursos de color y datos de un país dentro de una única pantalla.

## Características

- `ApiRestService` centraliza todos los `GET` y maneja errores HTTP mediante excepciones descriptivas.
- Modelos tipados para usuarios (`Persona`), recursos (`Resource`) y países (`Country`).
- Interfaz en Flutter con refresco manual/pull-to-refresh y manejo visual de estados (`loading`, `error`, `success`).
- Tests unitarios para el servicio y tests de widgets con un `FakeApiRestService`.

## Requisitos

- Flutter 3.5 o superior (`sdk ">=3.5.0 <4.0.0"`).
- Conexión a internet para ejecutar la app contra las APIs reales.

## Cómo ejecutar

```bash
flutter pub get
flutter run
```

Para ejecutar los tests:

```bash
flutter test
```

## Notas

- Las cabeceras `x-api-key` se mantienen configurables en `lib/src/config/api_keys.dart`.
- Cambia el país por defecto editando `_service.fetchCountry('Peru')` en `lib/main.dart`.
