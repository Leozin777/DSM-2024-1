import 'package:ap2/data/services/character_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/models/character.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CharacterService service = CharacterService();
  late Future<List<Character>> _charactersFuture;
  late List<Character> _characters;
  late List<Character> _charactersFiltered;

  @override
  void initState() {
    super.initState();
    _charactersFuture = _getCharacters();
  }

  _filterCharacters(String filtro) {
    setState(() {
      _charactersFiltered = _characters
          .where((element) => element.name.toLowerCase().contains(filtro.toLowerCase()))
          .toList();
    });
  }

  Future<List<Character>> _getCharacters() async {
    _characters = await service.getCharacters();
    _charactersFiltered = _characters;
    return _characters;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Column(
          
          children: [
            TextField(
              onChanged: (value) {
                _filterCharacters(value);
              },
              decoration: const InputDecoration(
                labelText: "Filtro",
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Character>>(
                  future: _charactersFuture,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(_charactersFiltered[index].name),
                              leading:
                                  Image.network(_charactersFiltered[index].image),
                            );
                          },
                          separatorBuilder: (context, int) {
                            return const Divider();
                          },
                          itemCount: _charactersFiltered.length);
                    }
              
                    if (snapshot.hasError)
                      return const Text("Erro ao buscar dados");
              
                    return const CircularProgressIndicator();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
