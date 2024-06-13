import 'package:ap2/data/models/location.dart';
import 'package:flutter/material.dart';

import '../../data/services/location_service.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final LocationService service = LocationService();
  late final Future<List<Location>> _locationsFuture;
  late List<Location> _locationsFiltered;
  late List<Location> _locationsNotFiltered;

  Future<List<Location>> _getLocations() async {
    _locationsNotFiltered = await service.getLocations();
    _locationsFiltered = _locationsNotFiltered;
    return _locationsNotFiltered;
  }

  @override
  void initState() {
    super.initState();
    _locationsFuture = _getLocations();
  }

  _filterCharacters(String filtro) {
    setState(() {
      _locationsFiltered = _locationsNotFiltered
          .where((element) =>
          element.name.toLowerCase().contains(filtro.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Locations"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                _filterCharacters(value);
              },
              decoration: const InputDecoration(
                labelText: "Filtro",
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Location>>(
              future: _locationsFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(_locationsFiltered[index].name));
                      },
                      separatorBuilder: (context, int) {
                        return const Divider();
                      },
                      itemCount: _locationsFiltered.length);
                }

                if (snapshot.hasError) {
                  return const Center(
                      child: Text("Erro ao carregar as localizações"));
                }

                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}
