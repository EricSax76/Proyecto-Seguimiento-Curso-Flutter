import 'package:flutter/material.dart';

import 'package:api_rest_cifo/src/data/models/country/country.dart';
import 'package:api_rest_cifo/src/data/models/reqres/persona.dart';
import 'package:api_rest_cifo/src/data/models/reqres/resource.dart';
import 'package:api_rest_cifo/src/data/services/api_rest_service.dart';

void main() {
  runApp(const ApiRestApp());
}

class ApiRestApp extends StatelessWidget {
  const ApiRestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROYECTO SEGUIMIENTO MODULO FLUTTER',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ApiDashboardPage(),
    );
  }
}

class ApiDashboardPage extends StatefulWidget {
  const ApiDashboardPage({super.key, this.service});

  final ApiRestService? service;

  @override
  State<ApiDashboardPage> createState() => _ApiDashboardPageState();
}

class _ApiDashboardPageState extends State<ApiDashboardPage> {
  late final ApiRestService _service;
  late Future<_DashboardData> _dashboardFuture;
  late final bool _ownsService;

  @override
  void initState() {
    super.initState();
    _service = widget.service ?? ApiRestService();
    _ownsService = widget.service == null;
    _dashboardFuture = _loadDashboardData();
  }

  Future<_DashboardData> _loadDashboardData() async {
    final results = await Future.wait<dynamic>([
      _service.fetchPeople(),
      _service.fetchResources(),
      _service.fetchCountry('Peru'),
    ]);

    return _DashboardData(
      people: results[0] as List<Persona>,
      resources: results[1] as List<Resource>,
      country: results[2] as Country?,
    );
  }

  Future<void> _refresh() async {
    setState(() {
      _dashboardFuture = _loadDashboardData();
    });
    await _dashboardFuture;
  }

  @override
  void dispose() {
    if (_ownsService) {
      _service.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Módulo Flutter'),
        actions: [
          IconButton(
            onPressed: _refresh,
            icon: const Icon(Icons.refresh),
            tooltip: 'Actualizar datos',
          ),
        ],
      ),
      body: FutureBuilder<_DashboardData>(
        future: _dashboardFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return _ErrorView(
              errorMessage: snapshot.error.toString(),
              onRetry: _refresh,
            );
          }

          if (!snapshot.hasData) {
            return const _ErrorView(
              errorMessage: 'No se pudo cargar la información.',
            );
          }

          final data = snapshot.data!;

          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const _SectionTitle(title: 'Usuarios de ReqRes'),
                ...data.people.map(_PersonTile.new),
                const SizedBox(height: 24),
                const _SectionTitle(title: 'Recursos disponibles'),
                ...data.resources.map(_ResourceTile.new),
                const SizedBox(height: 24),
                const _SectionTitle(title: 'País consultado'),
                _CountryCard(country: data.country),
                const SizedBox(height: 24),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _PersonTile extends StatelessWidget {
  const _PersonTile(this.persona);

  final Persona persona;

  @override
  Widget build(BuildContext context) {
    final hasAvatar = persona.avatar != null && persona.avatar!.isNotEmpty;
    final hasFirstName =
        persona.firstName != null && persona.firstName!.isNotEmpty;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: hasAvatar ? NetworkImage(persona.avatar!) : null,
          child: hasAvatar
              ? null
              : Text(hasFirstName
                  ? persona.firstName!.substring(0, 1).toUpperCase()
                  : '?'),
        ),
        title: Text(
          ('${persona.firstName ?? ''} ${persona.lastName ?? ''}')
                  .trim()
                  .isEmpty
              ? 'Usuario sin nombre'
              : '${persona.firstName ?? ''} ${persona.lastName ?? ''}'.trim(),
        ),
        subtitle: Text(persona.email),
        trailing: Text('#${persona.id}'),
      ),
    );
  }
}

class _ResourceTile extends StatelessWidget {
  const _ResourceTile(this.resource);

  final Resource resource;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(resource.name),
        subtitle: Text(
          'Pantone: ${resource.pantoneValue} • Año: ${resource.year}',
        ),
        leading: CircleAvatar(
          backgroundColor: _parseColor(resource.color),
          child: const Icon(Icons.palette, color: Colors.white),
        ),
      ),
    );
  }

  Color _parseColor(String hexColor) {
    try {
      final buffer = StringBuffer();
      if (hexColor.startsWith('#')) {
        buffer.write('ff');
        buffer.write(hexColor.substring(1));
      } else if (hexColor.length == 6) {
        buffer
          ..write('ff')
          ..write(hexColor);
      } else {
        buffer.write('ffffffff');
      }
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (_) {
      return const Color.fromARGB(255, 92, 91, 91);
    }
  }
}

class _CountryCard extends StatelessWidget {
  const _CountryCard({required this.country});

  final Country? country;

  @override
  Widget build(BuildContext context) {
    if (country == null) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('No se encontró información del país solicitado.'),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Capital: ${country!.capital.isNotEmpty ? country!.capital.join(', ') : 'Desconocida'}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text('Región: ${country!.region} (${country!.subregion})'),
            Text('Población: ${country!.population} habitantes'),
            Text('Área: ${country!.area.toStringAsFixed(0)} km²'),
            const SizedBox(height: 8),
            if (country!.timezones.isEmpty)
              const Text('Sin zonas horarias registradas')
            else
              Wrap(
                spacing: 8,
                children: country!.timezones
                    .map((timezone) => Chip(label: Text(timezone)))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.errorMessage, this.onRetry});

  final String errorMessage;
  final Future<void> Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline,
                size: 48, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: 16),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: const Text('Reintentar'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _DashboardData {
  const _DashboardData({
    required this.people,
    required this.resources,
    required this.country,
  });

  final List<Persona> people;
  final List<Resource> resources;
  final Country? country;
}
